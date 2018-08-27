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

  # Create the BCGShannontool application account
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

}
