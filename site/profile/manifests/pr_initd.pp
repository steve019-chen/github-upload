# Class: Role <insert name>
#
# This Role defines the profiles required by servers part of the <insert name / project>
#
# Parameters:
#
# Actions:
#   - <insert text>
# 
# Prereqs:
#   - <insert text>
#
class profile::pr_initd {

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
