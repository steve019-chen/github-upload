# This profile contains the configuration for the ASAPNOC application servers
#
# Parameters:
#
# Actions:
#   - Configure application account
#   - Create application account home directory
#   - Add sudo rules


# lint:ignore:unquoted_node_name lint:ignore:140chars

class profile::pr_jira {

# For reference, as provided by Novo request: svc_prov:x:15993:100:svc_prov:/home/svc_prov:/usr/bin/ksh
# Create the users group

group { 'users':
  ensure => present,
  gid    => '100',
}

# Create the svc_prov user for application account, set password

# user { 'svc_prov':
#   uid        => '15993',
#   gid        => 'users',
#   shell      => '/bin/bash',
#   password   => pw_hash(lookup('asapnoc::app_account_password'), 'SHA-512','mysalt'),
#   managehome => true,
#   require    => Group['users'],
# }

# Adding Sudo rules for docker and apache

# Do not change below 2 options, or original sudo file will get deleted
class { 'sudo':
  purge               => false,
  config_file_replace => false,
}

# Include rules in “content”

sudo::conf { 'puppet_jira':
  priority => 10,
  content  => 'svc_jira ALL=NOPASSWD : /sbin/service httpd start, /sbin/service httpd stop, /sbin/service httpd restart, /sbin/service httpd status, /usr/sbin/chkconfig httpd on, /usr/sbin/chkconfig httpd off, /opt/puppetlabs/bin/puppet agent -t , /opt/puppetlabs/bin/puppet agent -t --debug',
}
sudo::conf { 'puppet_agent':
  priority => 20,
  content  => 'svc_jira ALL=NOPASSWD : /opt/puppetlabs/bin/puppet agent -t , /opt/puppetlabs/bin/puppet agent -t --debug',
}

file {'/etc/rc.d/init.d/test1':
  ensure  => present,
  content => "Hello Jojos",
  }

case $facts['os']['release']['major']  {
  '5': { $provider = 'redhat' }
  '6': { $provider = 'redhat' }
  '7': { $provider = 'redhat' }   #switch to using systemd with a unit file
  default:   { $provider = 'redhat' }
}

file { '/etc/init.d/TELUS_jira_control':
  ensure => 'present',
  owner  => 'root',
  group  => 'root',
  mode   => '0755',
  source => 'puppet:///modules/profile/jira/TELUS_jira_control',
  notify => Service['TELUS_jira_control'],
}

service { 'TELUS_jira_control':
  enable    => true,
  hasstatus => false,
  provider  => $provider,
}
}

# lint:endignore
