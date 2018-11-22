# Class: pr_bcg_shannon
#
# This class configures linux servers for Boston Consulting Group Shannon Project
#
# Parameters:
#
# Actions:
#   - Install required packages
#   - Configure application account
#   - Create application directory
# 
# Prereqs:
#   - /apps filesystem must exist
#   - Optional, EPEL, and Software Collections channels must be added
#

class profile::pr_bcg_shannon {

  # Packages from the OS channel available by default
  $latest_packages = ['alsa-lib',
                      'atlas',
                      'autoconf',
                      'automake',
                      'gcc',
                      'gcc-c++',
                      'GConf2',
                      'iproute',
                      'libjpeg-turbo-devel',
                      'libXScrnSaver',
                      'zlib-devel']

  # Packages from the optional channel
  $optional_packages = ['atlas-devel',
                        'blas-devel',
                        'lapack-devel']

  # Packages from Extra Packages for Enterprise Linux (EPEL)
  $epel_packages = ['geos-devel',
                    'python36',
                    'python36-devel',
                    'python2-crypto']

  # Packages from Software Collections
  $sc_packages = ['devtoolset-7']


  # Install latest channel packages
  package { $latest_packages:
    ensure => present,
  }

  # Install Optional latest channel packages
  package { $optional_packages:
    ensure => present,
  }

  #Install EPEL Packages
  package { $epel_packages:
    ensure => present,
  }

  #Install Software Collections Packages
  package { $sc_packages:
    ensure => present,
  }

  # Create the BCGShannontool group
  group { 'BCGShannontool':
    ensure => present,
    gid    => '16414',
  }

  # Create the BCGShannontool application account
  user { 'BCGShannontool':
    uid        => '33003',
    gid        => 'BCGShannontool',
    groups     => 'remotelogin',
    shell      => '/bin/bash',
    managehome => yes,
    password   => pw_hash(lookup('bcg_shannon::app_account_password'), 'SHA-512','mysalt'),
    require    => Group['BCGShannontool'],
  }

  # Create the application directory
  file { ['/apps/BCGShannon']:
    ensure  => directory,
    owner   => 'BCGShannontool',
    group   => 'BCGShannontool',
    mode    => '0755',
    require => User['BCGShannontool'],
  }

}
