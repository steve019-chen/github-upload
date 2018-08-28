# Class: bcg_shannon
#
# This class configures linux servers for Boston Consulting Group Shannon Project
#
# Parameters:
#
# Actions:
#   - Configure application account
#   - Create application directory
# 
# Prereqs:
#   - /apps filesystem must exist
#   - Optional, EPEL, and Software Collections channels must be added
#

class profile::pr_dynatrace1agent {

  # Packages from the OS channel available by default

  # Create the BCGShannontool group
  group { 'dynatrace':
    ensure => present,
    gid    => '16409',
  }

  # Create the dyntrace user for application account
  user { 'dynatrace':
    uid      => '32996',
    gid      => 'dynatrace',
    shell    => '/bin/bash',
    password => pw_hash(lookup('bcg_shannon::app_account_password'), 'SHA-512','mysalt'),
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

  
	class { 'dynatraceoneagent':
		    download_link => 'puppet:///modules/dynatraceoneagent/Dynatrace-OneAgent-Linux-1.149.213.sh',
        user => 'dynatrace',
        require => File['/home/dynatrace'],
    		}
             

}
