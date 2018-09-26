# Class: pr_dynatrace1agent
#
# This class perform  dynatrace one agent Installation
#
# Parameters:
#
# Actions:
#   - Configure application account and group
#   - Create home directory for application account
#   - Install Dynatrace One Agent on selected servers
#   - Setup cron job that runs everyday to clean up logs older than <days_to_keep>
# Prereqs:
#   - Only runs on Linux hosts
#   - /home/ filesystem must exist
#   - Dynatrace One agent Puppet Module must be available in Bitbucket 
#   - Installer file should be placed in the modules/files directory
#

class profile::pr_dynatrace1agent {
  if $facts['kernel'] == 'Linux' {
    $path = '/opt/dynatrace/oneagent/log'
    $days_to_keep = 14

    # Create the dynatrace group
    group { 'dynatrace':
      ensure => present,
      gid    => '16409',
    }

    # Create the dynatrace user for application account, set password and manage home directory
    user { 'dynatrace':
      uid        => '32996',
      gid        => 'dynatrace',
      shell      => '/bin/bash',
      password   => pw_hash(lookup('dynatrace::app_account_password'), 'SHA-512','mysalt'),
      require    => Group['dynatrace'],
      managehome => true,
    }

    # Calling the module and passing a download location and source for the installation file

    class { 'dynatraceoneagent':
        download_link => 'puppet:///modules/dynatraceoneagent/Dynatrace-OneAgent-Linux-1.149.213.sh',
        download_dir  => '/tmp',
        user          => 'dynatrace',
        require       => User['dynatrace'],
        }
    
    cron { 'Dynatrace1agent old log cleanup':
      command => "/usr/bin/find ${path} -type f -mtime +${days_to_keep} -exec rm {} \\; 2> /dev/null",
      hour    => 10,
      minute  => 0,
      user    => dynatrace,
    }
    # Adding Sudo rules for  dynatrace user
    # Do not change below 2 options, or original sudo file will get deleted
    # Always ensure that purge => false, config_file_replace => false 
    class { 'sudo':
      purge               => false,
      config_file_replace => false,
      }
    # lint:ignore:140chars
    sudo::conf { 'puppet_dynatrace1agent':
      priority => 10,
      content  => 'dynatrace ALL=NOPASSWD : /usr/sbin/service oneagent status, /usr/sbin/service oneagent stop, /usr/sbin/service oneagent start, /usr/bin/systemctl status oneagent, /usr/bin/systemctl stop oneagent, /usr/bin/systemctl start oneagent, /opt/dynatrace/oneagent/agent/uninstall.sh',
      require  => User['dynatrace'],
      }
      # lint:endignore
  }
}
