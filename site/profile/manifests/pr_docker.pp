# Class: docker
#
# This class installs docker and its required packages
#
# Parameters:
#
# Actions:
#   - Install required packages
#   - Configure application account
#   - Create application directory
# 
# Prereqs:
#   - Optional, EPEL, and Software Collections channels must be added in Spacewalk
#

class profile::pr_docker {

class { 'docker':
  use_upstream_package_source => false,
  version                     => '1.12.0-1.0.2.el7',
}

#20180730 - t837836 - ASAPNOC PreProd test
file {'/data/puppet_test':
#    ensure => absent,
    ensure => present,
    content => "puppet test",
  }
  
}
