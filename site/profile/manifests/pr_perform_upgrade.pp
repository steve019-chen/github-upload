# This profile contains the configuration for the perform agent install / upgrade
#
# Parameters: 
# 3700 servers in telus greater or equal to 6.7
# 750 servers in telus between 5.2 and 6.6
# All servers are x64
# Servers will have version 11 or higher of patrol
# Actions: 
# - Check if perform is already installed based on Puppet facts
# - Choose the correct version of the agent based on the OS release
# - Download and untar the agent installer
# - Install the agent via the telusinstall.sh script provided in the tar file
# -- The script will install or upgrade the agent using svcbmcp
# -- The script will also run the post install script as root
# -- a log file will be created in the /var/tmp directory TSCO_<hostname>_install.txt
# - We will remove all the files within the directory created once the agent has been installed per the puppet fact
# 
# Create by: Corey Sprung ---- Corey.Sprung@TELUS.com
# Created on : Dec 18th 2019
#
# Last updated by: Corey Sprung ---- Corey.Sprung@TELUS.com
# Updated on : Jan 7th 2020
#
# Comment for update: Updated the logic to make it smarter
class profile::pr_perform_upgrade (
Integer $space_needed = 310200000,
String $hostname      = $facts['hostname'],
String $status        = String.new($facts['perform_info']['installed']),
String $patrolversion = String.new($facts['patrol_info']['version']),
Float $osversion      = Float.new($facts['operatingsystemrelease']),
Numeric $osmajor      = Numeric.new($facts['os']['release']['major'],true),
Numeric $osminor      = Numeric.new($facts['os']['release']['minor'],true),
$best1home            = $facts['perform_info']['best1home'],
)
{
  if 'V11' in $patrolversion {

    if 'true' in $status {
    # If Perform install status is true upgrade the agents to the following version

      if $osmajor == 6 and $osminor >= 7 {
      # If the OS is version 6.7 or higher

          if '11.5.0' in $best1home
          {
          tidy {'/var/tmp/TSCO-perform-linux-latest':
              backup  => false,
              recurse => true,
              rmdirs  => true,
            }
          tidy {'/var/tmp/TSCO-perform-linux-legacy':
            backup  => false,
            recurse => true,
            rmdirs  => true,
            }
          }
          else {
            # Agent 11.5.01
            $installdir = 'TSCO-perform-linux-latest'
            $install_perform = true
          }
        }
      elsif $osmajor == 5 and $osminor >= 2 and $osmajor == 6 and $osminor <= 6 {
      # If the OS is between version 5.2 and 6.7

        if '10.5.0' in $best1home{
          tidy {'/var/tmp/TSCO-perform-linux-legacy':
            backup  => false,
            recurse => true,
            rmdirs  => true,
            }
          }

        else {
          # Agent 10.5.00
          $installdir = 'TSCO-perform-linux-legacy'
          $install_perform = true
          }
        }

      else {
      # Unsupported version
        notify{'Unsupported version of linux OS':,
        }
      }
    }
    elsif 'false' in $status {
    # If Perform hasnt been installed install the agents

      if $osmajor == 6 and $osminor >= 7 {
        # Agent 11.5.01
        $installdir = 'TSCO-perform-linux-latest'
        $install_perform = true
      }
      elsif $osmajor == 5 and $osminor >= 2 and $osmajor == 6 and $osminor <= 6 {

        # Agent 10.5.00
        $installdir = 'TSCO-perform-linux-legacy'
        $install_perform = true
      }
      else {
      # Unsupported version
        notify{'Unsupported version of linux OS':,
        }
      }
    }
    else{
    # Unknown status
      notify{'Unknown status of TSCO':,
      }
    }

    if $install_perform {

      $installtar = "${installdir}.tar"

      #Ensure we have enough space for the .tar and extracted directoy
      if $space_needed > $facts['patrol_info']['var_tmp_bytes'] {
        notify{"Filesystem /var/tmp too full. Need ${space_needed} bytes but only ${facts['patrol_info']['var_tmp_bytes']} available":,
        }

        #Force an error at runtime
        exec{'perfom_upgrade_no_space':
          command => '/bin/false',
        }
      }
      else {
        # Ensure the TAR file is present, if not download from the file repo
        file { "/var/tmp/${installtar}":
          ensure => present,
          source => "http://lp99850.corp.ads/downloads/linux/${installtar}",
          before => Exec["untar ${installtar}"],
        }

        # Untar the Installtar file into /var/tmp
        exec {"untar ${installtar}":
          command => "tar -xvf /var/tmp/${installtar} && rm /var/tmp/${installtar}",
          path    => ['/sbin','/bin','/usr/sbin','/usr/bin'],
          cwd     => '/var/tmp/',
          creates => "/var/tmp/${installdir}",
          timeout => 300,
          require => File["/var/tmp/${installtar}"],
        }

        # Perfom the installation using the provide telusinstall.sh located in the Installdir
        exec {'performupgrade':
          command => "/var/tmp/${installdir}/telusinstall.sh",
          path    => ['/sbin','/bin','/usr/sbin','/usr/bin'],
          cwd     => "/var/tmp/${installdir}",
          creates => "/tmp/TSCO_${hostname}_Install.txt",
          timeout => 300,
          require => Exec["untar ${installtar}"],
        }
      }
    }
  }
  else{
    # Unknown status
      notify{'Patrol V11 not installed':,
      }
  }
}
# lint: endignore
