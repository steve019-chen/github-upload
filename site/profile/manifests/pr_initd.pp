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

  # Note: This should be a connection to rc.d. Directory is wrong
  file { '/etc/init.d':
    link   => true,
    target => '/etc/rc.d/init.d/',
    mode   => '0777',
    }

  file { '/etc/init.d/TELUS_nodemanager_control':
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/software/nodemanager/TELUS_nodemanager_control',
    notify => Service['TELUS_nodemanager_control'],
  }

  service { 'TELUS_nodemanager_control':
    ensure => running,
    enable => true,
  }

}
