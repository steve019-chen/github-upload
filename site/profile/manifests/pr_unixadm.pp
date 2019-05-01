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

# ToDo: Create an if statement to check if remotelogin is present
# Create the unixt4 user for application account, set password

user { 'unixt4':
  uid        => '53535',
  gid        => 'unixt4',
  shell      => '/bin/bash',
  groups     => 'remotelogin',	
  password   => '*LK*',
  managehome => true,
  require    => Group['unixt4'],
}
ssh_authorized_key { 'unixt4@ln99052':
  ensure => present,
  user   => 'unixt4',
  type   => 'ssh-rsa',
  key    => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA0Ou2HuF2wwGuLR3kZtco9K6LdIsFpoaLhNlIveLqoqnuYsCIwDIjwNawgep35B/koQyika6zcVY7SNsj5rSOzfpsoA6NvTxcNfdfOakCbBQCLQfza3P1EBuQutVagcYAuukyM14LRTACDKBSnV8b46AvW5DE9c1po6iIAq22dsNGIHcNn17CnXI9WA9fEy1S7+ioGPPjwOz+UkXzxaOr9InwO9/kxLBcBLfGfMIvYW8TPPXTGw8+VNwJg9g5ZodaMR6JKGccOxL+mj4EWTOc56s/diRarbkGky78I1eg7JyQWtDKNvAz7cQ1eANUdDa7LOSHDgfR8n5uDD4wp+tBqw==',
}

}
