# Class: Profile pr_unixadm
#
# This Profile is in place for the national Unix team to have an account 
# that they can use to connect to all linux machines via an ssh key setup
# and limited to a jump point box
# Parameters: 
#   - None
#
# Actions:
#   - Creates 2 groups : unixt4 and remotelogin
#   - Create 1 user : unixt4 with SSH access only
# 
# Prereqs:
#   - Jump point server has the required keys
#
class profile::pr_unixadm {

# For reference, as provided by Novo request
# Account: unixt4 uid: 53535
# Group: unixt4 gid: 53535
# Approved Novo request: 247409

# Create the users group
group { 'unixt4':
  ensure => present,
  gid    => '53535',
}

# Create the remotelogin group
group { 'remotelogin':
  ensure => present,
  gid    => '5050',
}

# Create the unixt4 user for application account, set password

user { 'unixt4':
  uid        => '53535',
  gid        => 'unixt4',
  shell      => '/bin/bash',
  groups     => 'remotelogin',
  password   => '*LK*',
  managehome => true,
  require    => Group['unixt4','remotelogin'],
}
# lint:ignore:140chars
# Create ssh key with the public key and limit connection from ln99052
ssh_authorized_key { 'unixt4':
  ensure  => present,
  user    => 'unixt4',
  type    => 'ssh-rsa',
  options => 'from="142.63.43.98"',
  key     => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA0Ou2HuF2wwGuLR3kZtco9K6LdIsFpoaLhNlIveLqoqnuYsCIwDIjwNawgep35B/koQyika6zcVY7SNsj5rSOzfpsoA6NvTxcNfdfOakCbBQCLQfza3P1EBuQutVagcYAuukyM14LRTACDKBSnV8b46AvW5DE9c1po6iIAq22dsNGIHcNn17CnXI9WA9fEy1S7+ioGPPjwOz+UkXzxaOr9InwO9/kxLBcBLfGfMIvYW8TPPXTGw8+VNwJg9g5ZodaMR6JKGccOxL+mj4EWTOc56s/diRarbkGky78I1eg7JyQWtDKNvAz7cQ1eANUdDa7LOSHDgfR8n5uDD4wp+tBqw==',
}
# lint:endignore

}
