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
# From Cadmus svc_jira:x:16257:100:Ryan Chan a/r 1307258:/home/svc_jira:/usr/bin/ksh

# Create the users group

group { 'users':
  ensure => present,
  gid    => '100',
}

# Create the svc_prov user for application account, set password

 user { 'svc_jira':
   uid        => '16257',
   gid        => 'users',
   shell      => '/bin/bash',
   password   => pw_hash(lookup('jira::app_account_password'), 'SHA-512','mysalt'),
   managehome => true,
   require    => Group['users'],
 }

# Adding Sudo rules for docker and apache

# Do not change below 2 options, or original sudo file will get deleted
class { 'sudo':
  purge               => false,
  config_file_replace => false,
}

# Include rules in “content”

sudo::conf { 'puppet_jira':
  priority => 10,
  content  => 'svc_jira ALL=NOPASSWD: /etc/init.d/httpd, /sbin/service httpd start, /sbin/service httpd stop, /sbin/service httpd restart, /sbin/service httpd status, /bin/docker, /bin/systemctl daemon-reload, /sbin/service docker start, /sbin/service docker stop, /sbin/service docker restart, /sbin/service docker status, /sbin/service mysqld start, /sbin/service mysqld stop, /sbin/service mysqld restart, /sbin/service mysqld status, /sbin/service jira start, /sbin/service jira stop, /sbin/service jira restart, /usr/sbin/chkconfig httpd on, /usr/sbin/chkconfig httpd off, /usr/sbin/chkconfig mysqld on, /usr/sbin/chkconfig mysqld off, /usr/sbin/chkconfig docker on, /usr/sbin/chkconfig docker off',
}
sudo::conf { 'puppet_jira_mysql':
  priority => 10,
  content  => 'svc_jira ALL=(mysql) NOPASSWD: ALL',
}
sudo::conf { 'puppet_agent':
  priority => 20,
  content  => 'svc_jira ALL=NOPASSWD : /opt/puppetlabs/bin/puppet agent -t , /opt/puppetlabs/bin/puppet agent -t --debug',
}

file_line { 'add_crontab_access':
  ensure => 'present',
  path  => '/etc/cron.allow',
  line  => 'svc_jira',
  match  => 'svc_jira',
  append_on_no_match => 'true',
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
