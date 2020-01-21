# Class: Role <insert name>
#
# This Role defines the profiles required by servers part of the <insert name / project>
#
# Parameters:
# Sharanya Comment 
# Actions:
#   - <insert text>
# 
# Prereqs:
#   - <insert text>
# Steve
# Sharanya
class profile::pr_static_route {
# Comment
#Add version lock to docker package
package {'yum-plugin-versionlock':
  ensure => present,
}

case $facts['os']['release']['major']  {
    '5': { $provider = 'redhat' }
    '6': { $provider = 'redhat' }
    '7': { $provider = 'redhat' }   #switch to using systemd with a unit file
    default:   { $provider = 'redhat' }
  }

service { 'network_service_restart':
    provider      => $provider,
    ensure        => present,
    restart       => 'systemctl restart network'
  }

file_line { 'add_route_static':
  ensure             => present,
  path               => '/etc/sysconfig/network-scripts/route-mgmt0_backup_20jan2020',
  line               => '100.70.45.169/32 via 100.66.96.1 dev mgmt0',
  append_on_no_match => true,
  notify             => Service['network_service_restart'],
}

}
