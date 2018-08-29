# Class: pr_dynatrace1agent
#
# This class perform  dynatrace one agent Installation
#
# Parameters:
#
# Actions:
#   - Configure application account
#   - Create application directory
#   - Install Dynatrace One Agent on selected servers
# Prereqs:
#   - /home/ filesystem must exist
#   - dynatrace one Agent Module must be installed
#

class profile::pr_dynatrace1agent {

  # Create the dynatrace group
  group { 'dynatrace':
    ensure => present,
    gid    => '16409',
  }

  # Create the dyntrace user for application account
  user { 'dynatrace':
    uid      => '32996',
    gid      => '16409',
    shell    => '/bin/bash',
    password => pw_hash(lookup('dynatrace::app_account_password'), 'SHA-512','mysalt'),
    require  => Group['dynatrace'],
  }

  # Create the application directory
  file { ['/home/dynatrace']:
    ensure  => directory,
    owner   => 'dynatrace',
    group   => 'dynatrace',
    mode    => '0755',
    require => User['dynatrace'],
  }

  # Perform Dynatrace one Agent Installation
	class { 'dynatraceoneagent':
		    download_link => 'puppet:///modules/dynatraceoneagent/Dynatrace-OneAgent-Linux-1.149.213.sh',
        user => 'dynatrace',
        require => File['/home/dynatrace'],
    		}
             

}
