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

file_line { 'yum_versionlock_config':
  ensure             => present,
  path               => '/etc/yum/pluginconf.d/versionlock.conf',
  line               => 'show_hint = 0',
  match              => 'show_hint = 1',
  append_on_no_match => false,
  require            => Package['yum-plugin-versionlock'],
}

}
