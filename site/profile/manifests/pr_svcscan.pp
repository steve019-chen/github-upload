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
#   - Create 1 user : svcscan with SSH access only
# 
# Prereqs:
#   - Jump point server has the required keys
#
class profile::pr_svcscan {

# For reference, as provided by Novo request
# Account: svcscan uid: 32555
# Group: svcscan gid: 32555
# Approved Novo request: #####

# Create the users group
group { 'svcscan':
  ensure => present,
  gid    => '32555',
}

# A few servers in the Linux enviornment do not have remotelogin group
# and have winbind enabled. The following condition ensures we do not assign
# remotelogin group to the user in this case

if ( ( $facts['telus_user_group_winbind'] == '1' ) and ( $facts['telus_user_group_sss'] == '0' ) ) 
{

  # Create the svcscan user for application account, set password to locked
  # Do not include in remotelogin group

  user { 'svcscan':
    uid      => '32555',
    gid      => 'svcscan',
    shell    => '/bin/bash',
    password => '*LK*',
    require  => Group['svcscan'],
  }
}
else {

  # Create the remotelogin group
  group { 'remotelogin':
    ensure => present,
    gid    => '5050',
  }

  # Create the svcscan user for application account with remotelogin group
  # set password to locked
  user { 'svcscan':
    uid      => '32555',
    gid      => 'svcscan',
    shell    => '/bin/bash',
    groups   => 'remotelogin',
    password => '*LK*',
    require  => Group['svcscan','remotelogin'],
  }
}

# Create home directory for user and set permissions
file { '/home/svcscan':
  ensure  => 'directory',
  owner   => 'svcscan',
  require => User['svcscan'],
}
# lint:ignore:140chars
# Create ssh key with the public key and limit connection from ln99052
ssh_authorized_key { 'svcscan':
  ensure  => present,
  user    => 'svcscan',
  type    => 'ssh-rsa',
  options => ['from="100.64.33.30,100.70.15.158,100.70.15.254,100.70.22.62,142.174.129.135,142.174.129.139,142.174.129.175,142.174.61.117,142.174.61.79,142.178.174.10,142.178.204.112,142.178.204.113,142.178.205.169,142.178.22.16,142.178.22.77,142.63.129.17,204.191.153.3,209.29.0.169,209.29.0.170,209.29.0.44,75.153.176.179,75.153.235.98,75.153.235.99,96.1.170.237,96.1.250.230"','no-agent-forwarding','no-port-forwarding','no-X11-forwarding'],
  key     => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAjHK8a6LfhEsrUuy5LxcmgFS++lzLNgnyBoQS8oRsG/Wb8vgbyJ9wW4wLxvTHIOvULsRoR5Q0zrI9uX7NVZug614iZf0qQ4yxrOgkz8Q+bZDO6pbJdFWPyqQP83N7e/1Pk1RULbH7tfe7bD7N0lG0HBy7NMh3rjqISTxB7zHbmM3HXbFFOJs3qqdxZ0foXNpeB9Ob1Plg02B6+fSZ+BeaVNC/zEgMwIxEcgpwq1cMigY+jFlFD6yaArr67wF7WQeArd6f/NY5jq+BEnqhEDp49Yul3naMvuamn52/q46+b4JtsWpL750/c8CRtSDg1LPsrb6jq7HrRK0saqc0o+okuw==',
  require => File['/home/svcscan'],
}
# lint:endignore

}
