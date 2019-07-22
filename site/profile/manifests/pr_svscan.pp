# Class: Profile pr_unixadm
#
# This Profile is in place for the national Unix team to have an account 
# that they can use to connect to all linux machines via an ssh key setup
# and limited to a jump point box
# Parameters: 
#   - None
#
# Actions:
#   - Creates 2 groups : #### and remotelogin
#   - Create 1 user : svscan with SSH access only
# 
# Prereqs:
#   - Jump point server has the required keys
#
class profile::pr_svscan {

# For reference, as provided by Novo request
# Account: svscan uid: 32555
# Group: svscan gid: 32555
# Approved Novo request: #####

# Create the users group
group { 'svscan':
  ensure => present,
  gid    => '32555',
}

# Create the remotelogin group
group { 'remotelogin':
  ensure => present,
  gid    => '5050',
}

# Create the svscan user for application account, set password to locked

user { 'svscan':
  uid        => '32555',
  gid        => 'svscan',
  shell      => '/bin/bash',
  groups     => 'remotelogin',
  password   => '*LK*',
  managehome => true,
  require    => Group['svscan','remotelogin'],
}
# lint:ignore:140chars
# Create ssh key with the public key and limit connection from ln99052
ssh_authorized_key { 'svscan':
  ensure  => present,
  user    => 'svscan',
  type    => 'ssh-rsa',
  options => 'from="142.63.43.98"',     #determine options
  key     => '<newkey>',
}
# lint:endignore

}
