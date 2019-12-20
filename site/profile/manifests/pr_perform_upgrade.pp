# This profile contains the configuration for the perform agent install / upgrade
#
# Parameters: 
#
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
String  $best1home    = $facts['perform_info']['best1home'],
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

  if $osversion >= 6.7
  {
  # Agent 11.5.01 - 3700 servers in telus greater or equal to 6.7 
    $installtar = 'TSCO-perform-linux-latest.tar'
    $installdir = 'TSCO-perform-linux-latest'
  }
  elsif $osversion >= 5.2 and $osversion < 6.7
  {
  # Agent 10.5.00  - 750 servers in telus between 5.2 and 6.6
    $installtar = 'TSCO-perform-linux-legacy.tar'
    $installdir = 'TSCO-perform-linux-legacy'
  }
  else {
    # lint: ignore: 140chars
    notify{
      'Unsupported version of linux OS':,
    }
    #Force an error at runtime
    exec{'perform_upgrade_not_supported_os':
      command => '/bin/false',
    }
  }

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

      # We have already completed, make sure we clean up the directory.
      tidy {"/var/tmp/${installdir}/":
        path    => "/var/tmp/${installdir}/",
        backup  => false,
        recurse => true,
      }
    }
}
else {
  #do nothing
}
}

# lint: endignore
