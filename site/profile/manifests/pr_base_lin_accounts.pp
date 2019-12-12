# Class: pr_base_lin
#
# This class is the base profile for TELUS Linux servers
#
# Actions:
#   - Creates remotelogin group on all ldap enabled servers
#   - Creates svcscan and unixadm service accounts
#   - 
# Prereqs:
#   - telus_user_group_winbind custom fact deployed to machines
#   - telus_user_group_sss custom fact deployed to machines
# lint:ignore:unquoted_node_name lint:ignore:140chars
class profile::pr_base_lin_accounts {

# For reference, as provided by Novo request
# Group: remotelogin gid: 5050

if (( $facts['telus_user_group_winbind'] == '0' and $facts['telus_user_group_sss'] == '1' and $facts['os']['release']['major'] > '5'))
{
  # Create the remotelogin group
  group { 'remotelogin':
    ensure => present,
    gid    => '5050',
  }
}
else {
  # Don't create the remotelogin group
}

# For reference, as provided by Novo request
# Account: svcscan uid: 32555
# Group: svcscan gid: 32555
# Approved Novo request: #####

if ( ($facts['os']['release']['major'] == '5') and ($facts['telus_user_group_sss'] == '1'))
{
# Please work with T3 to log into the machines and update /etc/security/access.conf to remove brackets

}
else
{
  # Create the users group
  group { 'svcscan':
    ensure => present,
    gid    => '32555',
  }
  group { 'unixt4':
    ensure => present,
    gid    => '53535',
  }

  # A few servers in the Linux enviornment do not have remotelogin group
  # and have winbind enabled. The following condition ensures we do not assign
  # remotelogin group to the user in this case

  if ( ( $facts['telus_user_group_winbind'] == '1' ) and ( $facts['telus_user_group_sss'] == '0' ) )
  {

    # Create the svcscan user for application account, set password to locked
    # Do not include in remotelogin group

    user { 'svcscan':
      uid        => '32555',
      gid        => 'svcscan',
      password   => '*LK*',
      managehome => true,
      require    => Group['svcscan'],
    }
  # Create the unixt4 user for application account, set password to locked

  user { 'unixt4':
    uid        => '53535',
    gid        => 'unixt4',
    shell      => '/bin/bash',
    password   => '*LK*',
    managehome => true,
    require    => Group['unixt4'],
  }

  }
  else {

    # Create the svcscan user for application account with remotelogin group
    # set password to locked
    user { 'svcscan':
      uid        => '32555',
      gid        => 'svcscan',
      groups     => 'remotelogin',
      password   => '*LK*',
      managehome => true,
      require    => Group['svcscan','remotelogin'],
    }

  # Create the unixt4 user for application account with remotelogin group
  # set password to locked

    user { 'unixt4':
      uid        => '53535',
      gid        => 'unixt4',
      shell      => '/bin/bash',
      groups     => 'remotelogin',
      password   => '*LK*',
      managehome => true,
      require    => Group['unixt4','remotelogin'],
    }
  }


  # # Limiting deployment to : KIDC Prod, KIDC NP, Toll, Laird, QIDC Non Prod, QIDC Prod
  # # Not deploying to: QIDC Tools, KIDC Tools
  if ($facts['puppet_server'] in ['btln007206.corp.ads','btln002494.corp.ads','btlp000336.corp.ads','btln000197.corp.ads','btlp000966.corp.ads','lp99604.corp.ads','lp99605.corp.ads'] )
  {
    # Create ssh key with the public key and limit connection to IPs below
    ssh_authorized_key { 'svcscan':
      ensure  => present,
      user    => 'svcscan',
      type    => 'ssh-rsa',
      options => ['from="142.178.205.169,142.178.204.112,142.178.174.10,142.174.129.135,142.174.129.139,142.174.129.176,142.174.61.117,142.63.129.17,142.174.61.79,75.153.176.179,96.1.160.14,96.1.166.109,100.77.164.23,100.77.165.23,100.125.253.244 ,100.125.162.244,100.70.15.254,100.64.33.30,100.70.23.30,100.70.15.158,100.70.22.62,96.1.250.230,100.70.30.85,100.70.32.85,204.191.153.3,209.29.0.44,209.29.0.161,209.29.0.169,96.1.170.47,96.1.160.113,142.178.22.16 ,100.70.31.235,205.206.214.190,209.91.119.50,100.125.167.228,100.125.167.244"','no-agent-forwarding','no-port-forwarding','no-X11-forwarding'],
      key     => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAjHK8a6LfhEsrUuy5LxcmgFS++lzLNgnyBoQS8oRsG/Wb8vgbyJ9wW4wLxvTHIOvULsRoR5Q0zrI9uX7NVZug614iZf0qQ4yxrOgkz8Q+bZDO6pbJdFWPyqQP83N7e/1Pk1RULbH7tfe7bD7N0lG0HBy7NMh3rjqISTxB7zHbmM3HXbFFOJs3qqdxZ0foXNpeB9Ob1Plg02B6+fSZ+BeaVNC/zEgMwIxEcgpwq1cMigY+jFlFD6yaArr67wF7WQeArd6f/NY5jq+BEnqhEDp49Yul3naMvuamn52/q46+b4JtsWpL750/c8CRtSDg1LPsrb6jq7HrRK0saqc0o+okuw==',
      require => File['/home/svcscan'],
    }
    ssh_authorized_key { 'unixt4':
      ensure  => present,
      user    => 'unixt4',
      type    => 'ssh-rsa',
      options => 'from="142.63.43.98"',
      key     => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA0Ou2HuF2wwGuLR3kZtco9K6LdIsFpoaLhNlIveLqoqnuYsCIwDIjwNawgep35B/koQyika6zcVY7SNsj5rSOzfpsoA6NvTxcNfdfOakCbBQCLQfza3P1EBuQutVagcYAuukyM14LRTACDKBSnV8b46AvW5DE9c1po6iIAq22dsNGIHcNn17CnXI9WA9fEy1S7+ioGPPjwOz+UkXzxaOr9InwO9/kxLBcBLfGfMIvYW8TPPXTGw8+VNwJg9g5ZodaMR6JKGccOxL+mj4EWTOc56s/diRarbkGky78I1eg7JyQWtDKNvAz7cQ1eANUdDa7LOSHDgfR8n5uDD4wp+tBqw==',
    }
  }
  # # Limiting deployment to : QIDC Tools, KIDC Tools
  # # Not deploying to: KIDC Prod, KIDC NP, Toll, Laird, QIDC Non Prod, QIDC Prod
  elsif ($facts['puppet_server'] in ['tslp000443.corptools.ads','tslp000578.corptools.ads'] )
  {
    ssh_authorized_key { 'svcscantools':
    ensure  => present,
    user    => 'svcscan',
    type    => 'ssh-rsa',
    options => ['from="100.64.33.30,100.70.15.158,100.70.15.254,100.70.22.62,142.174.129.135,142.174.129.139,142.174.129.175,142.174.61.117,142.174.61.79,142.178.174.10,142.178.204.112,142.178.204.113,142.178.205.169,142.178.22.16,142.178.22.77,142.63.129.17,204.191.153.3,209.29.0.169,209.29.0.170,209.29.0.44,75.153.176.179,75.153.235.98,75.153.235.99,96.1.170.237,96.1.250.230"','no-agent-forwarding','no-port-forwarding','no-X11-forwarding'],
    key     => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDC/4v0rMbQAOJIkdrq3DPW9e6yt8DKe6lwD16av32I05p/bl2xZg+XRVYC++/+80ir+41sRW/UVgQZyDK3tJXEy65DyUvbf2Iy4xPu9Xq0r/vH64JaLHWWtNvRlHoVj0uXLb4lLehUKvbJLAXCaPSf76JUuKtrizJnUdDT27+h+l4sq3aJgC41nmvDHtmVkQXKEDYZqK+kb39j6F3CFwU4jcMbBh0PGZQ7tkYWurA8JbUNS8VTpVEuTzZ1Z5U9gYKiUesQ35qr90YE1kTpZQeEG+Nvx/ht9F+RAGzDLDdKZmn0088gi5hF5qBDiC4eo9ahhknX3Tj6XF2EnLzHQAXk8T9qExNL+9V0PZXLlVP3GgHe0kkbpU+tjquaYZqAnS51dF+H/A0wXxVQv0Wd2AFEAnj88ZybET3OOmcIvQhOiRO8DjeZbBcQPC397Ysm3NNMvCVAZWwguwYFtmkGQOXnfjlbWFpgNPGprJM65lQ/r+WwNkxMNCNFNW+3Cl2JPXAyxnZTBGuoPZ8iFxyG557+FIUyQKEoix62SleQu+7S9Sui7Y13f3KYfYOrQgNJSj4DgqMCRYXXnCorWAJeJ+TNechn1lHQntT1QKsWs82aGryla8Ft89sujDzo3LmeY+2dxix0Nqq6poRY0mtiVuTbBCC4Fc2qb+i5vr9FpRKeFw==',
    require => File['/home/svcscan'],
    }
  }
  else
  {
    # No service account
  }

  }

}
# lint:endignore
