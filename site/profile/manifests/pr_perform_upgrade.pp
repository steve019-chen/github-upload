# This profile contains the configuration for the perform agent install / upgrade
#
# Parameters: 
# 3700 servers in telus greater or equal to 6.7
# 750 servers in telus between 5.2 and 6.6
# Actions: 
#   - This will check that svcbmcp is present on the server
#   - Download and untar the agent installer
#   - Install the agent via the telusinstall.sh script provided in the tar file
#     - The script will install or upgrade the agent using svcbmcp
#     - The script will also run the post install script as root
#     - a log file will be created in the /var/tmp directory TSCO_<hostname>_install.txt
#   - We will remove all the files within the directory created.
# 
# Create by: Corey Sprung ---- Corey.Sprung@TELUS.com
# Created on : Dec 18th 2019
#
# Last updated by: Corey Sprung ----- Corey.Sprung@TELUS.com
# Updated on : Dec 20th 2019
#
# Comment for update: Added better comments
# lint: ignore: unquoted_node_name lint: ignore: 140chars

class profile::pr_perform_upgrade (
Integer $space_needed = 310200000,
String  $hostname     = $facts['hostname'],
Boolean $status       = $facts['perform_info']['installed'],
Float   $osversion    = Float.new($facts['os']['release']['full']),
$best1home    = $facts['perform_info']['best1home'],
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

  if $status{
  # If Perform install status is true
    if $osversion >= 6.7
    {
    # Agent 11.5.01
      $installtar = 'TSCO-perform-linux-latest.tar'
      $installdir = 'TSCO-perform-linux-latest'

      if '11.5.0' in $best1home
      {
      tidy {"/var/tmp/${installdir}/":
          path    => "/var/tmp/${installdir}/",
          backup  => false,
          recurse => true,
        }
      }

      else {
        if $space_needed > $facts['patrol_info']['var_tmp_bytes'] {
          # lint: ignore: 160chars
          notify{
            "Filesystem ${facts['patrol_info']['var_tmp_fs']} too full. Need ${space_needed} bytes in /var/tmp but only ${facts['patrol_info']['var_tmp_bytes']} available":,
          }
          #Force an error at runtime
          exec{'perfom_upgrade_no_space':
            command => '/bin/false',
          }
        }
        else {
          # download the TAR file and extract into the installdir.
          archive { "/var/tmp/${installtar}":
            ensure        => present,
            source        => "puppet:///software/perform_upgrade/${installtar}",
            extract       => true,
            creates       => "/var/tmp/${installdir}",
            extract_path  => '/var/tmp/',
            extract_flags => 'xvf',
            cleanup       => true,
          }

          # Perfom the installation using the provide telusinstall.sh.
          exec {'performupgrade':
            command     => "/var/tmp/${installdir}/telusinstall.sh",
            path        => ['/sbin','/bin','/usr/sbin','/usr/bin'],
            cwd         => "/var/tmp/${installdir}",
            environment => ['HOME=/home/svcbmcp'],
            creates     => "/tmp/TSCO_${hostname}_Install.txt",
            timeout     => 3600,
            require     => Archive["/var/tmp/${installtar}"],
          }
        }
      }
    }
    elsif $osversion >= 5.2 and $osversion < 6.7
    {
    # Agent 10.5.00
      $installtar = 'TSCO-perform-linux-legacy.tar'
      $installdir = 'TSCO-perform-linux-legacy'

      if '10.5.0' in $best1home
      {
      tidy {"/var/tmp/${installdir}/":
          path    => "/var/tmp/${installdir}/",
          backup  => false,
          recurse => true,
        }
      }

      else {
        if $space_needed > $facts['patrol_info']['var_tmp_bytes'] {
          # lint: ignore: 160chars
          notify{
            "Filesystem ${facts['patrol_info']['var_tmp_fs']} too full. Need ${space_needed} bytes in /var/tmp but only ${facts['patrol_info']['var_tmp_bytes']} available":,
          }
          #Force an error at runtime
          exec{'perfom_upgrade_no_space':
            command => '/bin/false',
          }
        }
        else {
          # download the TAR file and extract into the installdir.
          archive { "/var/tmp/${installtar}":
            ensure        => present,
            source        => "puppet:///software/perform_upgrade/${installtar}",
            extract       => true,
            creates       => "/var/tmp/${installdir}",
            extract_path  => '/var/tmp/',
            extract_flags => 'xvf',
            cleanup       => true,
          }

          # Perfom the installation using the provide telusinstall.sh.
          exec {'performupgrade':
            command     => "/var/tmp/${installdir}/telusinstall.sh",
            path        => ['/sbin','/bin','/usr/sbin','/usr/bin'],
            cwd         => "/var/tmp/${installdir}",
            environment => ['HOME=/home/svcbmcp'],
            creates     => "/tmp/TSCO_${hostname}_Install.txt",
            timeout     => 3600,
            require     => Archive["/var/tmp/${installtar}"],
          }
        }
      }
    }
    else
    {
    # Unsupported version
      notify{
      'Unsupported version of linux OS':,
      }
    }
  }
  else{
  # In Perform hasnt been installed
    if $osversion >= 6.7
    {
    # Agent 11.5.01
      $installtar = 'TSCO-perform-linux-latest.tar'
      $installdir = 'TSCO-perform-linux-latest'

        if $space_needed > $facts['patrol_info']['var_tmp_bytes'] {
          # lint: ignore: 160chars
          notify{
            "Filesystem ${facts['patrol_info']['var_tmp_fs']} too full. Need ${space_needed} bytes in /var/tmp but only ${facts['patrol_info']['var_tmp_bytes']} available":,
          }
          #Force an error at runtime
          exec{'perfom_upgrade_no_space':
            command => '/bin/false',
          }
        }
        else {
          # download the TAR file and extract into the installdir.
          archive { "/var/tmp/${installtar}":
            ensure        => present,
            source        => "puppet:///software/perform_upgrade/${installtar}",
            extract       => true,
            creates       => "/var/tmp/${installdir}",
            extract_path  => '/var/tmp/',
            extract_flags => 'xvf',
            cleanup       => true,
          }

          # Perfom the installation using the provide telusinstall.sh.
          exec {'performupgrade':
            command     => "/var/tmp/${installdir}/telusinstall.sh",
            path        => ['/sbin','/bin','/usr/sbin','/usr/bin'],
            cwd         => "/var/tmp/${installdir}",
            environment => ['HOME=/home/svcbmcp'],
            creates     => "/tmp/TSCO_${hostname}_Install.txt",
            timeout     => 3600,
            require     => Archive["/var/tmp/${installtar}"],
          }
        }
      }
    elsif $osversion >= 5.2 and $osversion < 6.7
    {
    # Agent 10.5.00
      $installtar = 'TSCO-perform-linux-legacy.tar'
      $installdir = 'TSCO-perform-linux-legacy'

        if $space_needed > $facts['patrol_info']['var_tmp_bytes'] {
          # lint: ignore: 160chars
          notify{
            "Filesystem ${facts['patrol_info']['var_tmp_fs']} too full. Need ${space_needed} bytes in /var/tmp but only ${facts['patrol_info']['var_tmp_bytes']} available":,
          }
          #Force an error at runtime
          exec{'perfom_upgrade_no_space':
            command => '/bin/false',
          }
        }
        else {
          # download the TAR file and extract into the installdir.
          archive { "/var/tmp/${installtar}":
            ensure        => present,
            source        => "puppet:///software/perform_upgrade/${installtar}",
            extract       => true,
            creates       => "/var/tmp/${installdir}",
            extract_path  => '/var/tmp/',
            extract_flags => 'xvf',
            cleanup       => true,
          }

          # Perfom the installation using the provide telusinstall.sh.
          exec {'performupgrade':
            command     => "/var/tmp/${installdir}/telusinstall.sh",
            path        => ['/sbin','/bin','/usr/sbin','/usr/bin'],
            cwd         => "/var/tmp/${installdir}",
            environment => ['HOME=/home/svcbmcp'],
            creates     => "/tmp/TSCO_${hostname}_Install.txt",
            timeout     => 3600,
            require     => Archive["/var/tmp/${installtar}"],
          }
        }
      }
    else
    {
    # Unsupported version
      notify{
      'Unsupported version of linux OS':,
      }
    }
  }
}
# lint: endignore
