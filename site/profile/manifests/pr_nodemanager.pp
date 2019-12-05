# Class: Profile Nodemanager
#
# This Role defines the profiles required by servers part of the 
# Environment management team who are using nodemanager to 
# turn on services on starup
#
# Parameters:
#
# Actions:
#   - Copies over file and enables it as a service on the machine 
# 
# Prereqs:
#   - File: TELUS_nodemanager_control placed in profile module
#
class profile::pr_nodemanager {

  file { '/etc/init.d/TELUS_nodemanager_control':
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/profile/nodemanager/TELUS_nodemanager_control',
    notify => Service['TELUS_nodemanager_control'],
  }

  service { 'TELUS_nodemanager_control':
    enable    => true,
    hasstatus => false,
    provider  => 'redhat',
  }

}
