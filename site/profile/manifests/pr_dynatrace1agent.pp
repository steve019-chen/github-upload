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
# Prereqs:
#   - /home/ filesystem must exist
#   - Dynatrace One agent Puppet Module must be available in Bitbucket 
#   - Installer file should be placed in the modules/files directory
#

class profile::pr_dynatrace1agent {

  # Create the dynatrace group
  group { 'dynatrace':
    ensure => present,
    gid    => '16409',
  }

  # Create the dynatrace user for application account, set password and manage home directory
  user { 'dynatrace':
    uid      => '32996',
    gid      => 'dynatrace',
    shell    => '/bin/bash',
    password => pw_hash(lookup('dynatrace::app_account_password'), 'SHA-512','mysalt'),
    require  => Group['dynatrace'],
    managehome => true,
  }

# Calling the module and passing a download location and source for the installation file

	class { 'dynatraceoneagent':
    download_link => 'puppet:///modules/dynatraceoneagent/Dynatrace-OneAgent-Linux-1.149.213.sh',
    download_dir  => '/tmp',
    user          => 'dynatrace',
    require       => User['dynatrace'],
    }
             

}
