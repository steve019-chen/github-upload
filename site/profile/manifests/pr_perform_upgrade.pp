# This profile contains the configuration for the perform agent install / upgrade
#
# Parameters: 
# 3700 servers in telus greater or equal to 6.7
# 750 servers in telus between 5.2 and 6.6
# Actions: 
#   - This will check that svcbmcp is present on the server
#   - Check if perform is already installed based on Puppet facts
#   - Choose the correct version of the agent based on the OS release
#   - Download and untar the agent installer
#   - Install the agent via the telusinstall.sh script provided in the tar file
#     - The script will install or upgrade the agent using svcbmcp
#     - The script will also run the post install script as root
#     - a log file will be created in the /var/tmp directory TSCO_<hostname>_install.txt
#   - We will remove all the files within the directory created.
# 
# Create by: Corey Sprung ----Corey.Sprung@TELUS.com
# Created on : Dec 18th 2019
#
# Last updated by: Corey Sprung ---- Corey.Sprung@TELUS.com
# Updated on : Jan 6th 2020
#
# Comment for update: Updated the logic to make it smarter
class profile::pr_perform_upgrade (
Integer $space_needed = 310200000,
String $hostname      = $facts['hostname'],
String $status        = String.new($facts['perform_info']['installed']),
Float $osversion      = Float.new($facts['os']['release']['full']),
$best1home            = $facts['perform_info']['best1home'],
$architecture         = $facts['architecture'],
)
{
  #Required user uid = 3181(svcbmcp) gid = 3181(bmc) groups = 3181(bmc) context = unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
  #Create the users group if it doesnt already exsist
  group { 'bmc':
    ensure => present,
    gid    => '3181',
  }

  #Create the user for application account if it doesnt already exsist
  user { 'svcbmcp':
    uid     => '3181',
    gid     => 'bmc',
    shell   => '/bin/bash',
    require => Group['bmc'],
  }

  if 'true' in $status {
  # If Perform install status is true upgrade the agents to the following version

    if $osversion >= 6.7 {
    # If the OS is version 6.7 or higher

      if '64' in $architecture {
      # If the OS is 64 BIT

        # Agent 11.5.01 x64
        $installtar = 'TSCO-perform-linux-latest.tar'
        $installdir = 'TSCO-perform-linux-latest'

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
          if $space_needed > $facts['patrol_info']['var_tmp_bytes'] {
            notify{
              "Filesystem /var/tmp too full. Need ${space_needed} bytes but only ${facts['patrol_info']['var_tmp_bytes']} available":,
            }
            #Force an error at runtime
            exec{'perfom_upgrade_no_space':
              command => '/bin/false',
            }
          }
          else {
            # download the TAR file and extract into the installdir.
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
              timeout => 3600,
              require => File["/var/tmp/${installtar}"],
            }
            # Perfom the installation using the provide telusinstall.sh located in the Installdir
            exec {'performupgrade':
              command => "/var/tmp/${installdir}/telusinstall.sh",
              path    => ['/sbin','/bin','/usr/sbin','/usr/bin'],
              cwd     => "/var/tmp/${installdir}",
              creates => "/tmp/TSCO_${hostname}_Install.txt",
              timeout => 3600,
              require => Exec["untar ${installtar}"],
            }
          }
        }
        }

      else {
      # Unsupported OS architecture
        }
    }
    elsif $osversion >= 5.2 and $osversion < 6.7 {

      if '64' in $architecture {
      # If the OS is 64 BIT
        # Agent 10.5.00
        $installtar = 'TSCO-perform-linux-legacy.tar'
        $installdir = 'TSCO-perform-linux-legacy'

        if '10.5.0' in $best1home
        {
        tidy {'/var/tmp/TSCO-perform-linux-legacy':
          backup  => false,
          recurse => true,
          rmdirs  => true,
          }
        }

        else {
          if $space_needed > $facts['patrol_info']['var_tmp_bytes'] {
            notify{
              "Filesystem /var/tmp too full. Need ${space_needed} bytes but only ${facts['patrol_info']['var_tmp_bytes']} available":,
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
              timeout => 3600,
              require => File["/var/tmp/${installtar}"],
            }
            # Perfom the installation using the provide telusinstall.sh located in the Installdir
            exec {'performupgrade':
              command => "/var/tmp/${installdir}/telusinstall.sh",
              path    => ['/sbin','/bin','/usr/sbin','/usr/bin'],
              cwd     => "/var/tmp/${installdir}",
              creates => "/tmp/TSCO_${hostname}_Install.txt",
              timeout => 3600,
              require => Exec["untar ${installtar}"],
            }
          }
        }
        }

      else {
      # Unsupported OS architecture
        }
    }
    else {
    # Unsupported version
      notify{
      'Unsupported version of linux OS':,
      }
    }
  }
  elsif 'false' in $status {
  # If Perform hasnt been installed install the agents

    if $osversion >= 8.7 {
    # If the OS is version 6.7 or higher

      if '64' in $architecture {
      # If the OS is 64 BIT

          # Agent 11.5.01
          $installtar = 'TSCO-perform-linux-latest.tar'
          $installdir = 'TSCO-perform-linux-latest'

            if $space_needed > $facts['patrol_info']['var_tmp_bytes'] {
              notify{
                "Filesystem /var/tmp too full. Need ${space_needed} bytes but only ${facts['patrol_info']['var_tmp_bytes']} available":,
              }
              #Force an error at runtime
              exec{'perfom_upgrade_no_space':
                command => '/bin/false',
              }
            }
            else {
              notify{"right before downloading archive ${installtar} directory ${installdir}":,}
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
                timeout => 3600,
                require => File["/var/tmp/${installtar}"],
              }
              # Perfom the installation using the provide telusinstall.sh located in the Installdir
              exec {'performupgrade':
                command => "/var/tmp/${installdir}/telusinstall.sh",
                path    => ['/sbin','/bin','/usr/sbin','/usr/bin'],
                cwd     => "/var/tmp/${installdir}",
                creates => "/tmp/TSCO_${hostname}_Install.txt",
                timeout => 3600,
                require => Exec["untar ${installtar}"],
              }
            }
          }

      else {
      # Unsupported OS architecture
        }
    }
    elsif $osversion >= 5.2 and $osversion < 8.7 {

      if '64' in $architecture {
      # If the OS is 64 BIT

        # Agent 10.5.00
          $installtar = 'TSCO-perform-linux-legacy.tar'
          $installdir = 'TSCO-perform-linux-legacy'

            if $space_needed > $facts['patrol_info']['var_tmp_bytes'] {
              notify{
                "Filesystem /var/tmp too full. Need ${space_needed} bytes but only ${facts['patrol_info']['var_tmp_bytes']} available":,
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
                timeout => 3600,
                require => File["/var/tmp/${installtar}"],
              }
              # Perfom the installation using the provide telusinstall.sh located in the Installdir
              exec {'performupgrade':
                command => "/var/tmp/${installdir}/telusinstall.sh",
                path    => ['/sbin','/bin','/usr/sbin','/usr/bin'],
                cwd     => "/var/tmp/${installdir}",
                creates => "/tmp/TSCO_${hostname}_Install.txt",
                timeout => 3600,
                require => Exec["untar ${installtar}"],
              }
            }
          }

      else {
      # Unsupported OS architecture
        }
    }
    else {
    # Unsupported version
      notify{
      'Unsupported version of linux OS':,
      }
      }
  }
  else{
  # Unknown status
    notify{
    'unknown status of TSCO':,
    }
    }
}
# lint: endignore
