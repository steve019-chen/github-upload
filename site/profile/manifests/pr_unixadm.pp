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
class profile::pr_unixadm {

# For reference, as provided by Novo request
# Account: unixt4 uid: 53535
# Group: unixt4 gid: 53535

# Create the users group

group { 'unixt4':
  ensure => present,
  gid    => '53535',
}

# Create the unixt4 user for application account, set password

user { 'unixt4':
  uid        => '53535',
  gid        => 'unixt4',
  shell      => '/bin/bash',
  password   => 'changeme',
  managehome => true,
  require    => Group['unixt4'],
}

}
