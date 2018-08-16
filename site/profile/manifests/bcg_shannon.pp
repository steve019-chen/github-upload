# Class: bcg_shannon
#
# This class configures linux servers for Boston Consulting Group Shannon Project
#
# Parameters:
#
# Actions:
#   - Install required packages
#   - Configure application account
#   - Create application directory

class profile::bcg_shannon {

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

  # Create the BCGShannontool group
  group { 'BCGShannontool':
    ensure => present,
    gid    => '16422',
  }

  # Create the BCGShannontool application account
  user { 'BCGShannontool':
    uid      => '33003',
    gid      => 'BCGShannontool',
    groups   => 'remotelogin',
    shell    => '/bin/bash',
    password => pw_hash(lookup('bcg_shannon::app_account_password'), 'SHA-512','mysalt'),
    require  => Group['BCGShannontool'],
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
