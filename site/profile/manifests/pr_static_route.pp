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

exec { 'yum versionlock docker-ce':
  path    => '/bin:/usr/bin:/usr/sbin:/bin',
  unless  => 'cat /etc/yum/pluginconf.d/versionlock.list | grep -q docker-ce > /dev/null',
  require => Package['yum-plugin-versionlock'],
}

file_line { 'add_route_static':
  ensure             => present,
  path               => '/etc/sysconfig/network-scripts/route-mgmt0_backup_20jan2020',
  line               => '100.70.45.169/32 via 100.66.96.1 dev mgmt0',
  append_on_no_match => true,
 
}

}
