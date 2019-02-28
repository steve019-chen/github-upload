# This profile contains the configuration for the ASAPNOC application servers
#
# Parameters:
#
# Actions:
#   - Install required packages for docker and configure docker (proxy settings, ...)
#   - Configure application account
#   - Create application account home directory
#   - Install apache
#   - Add sudo rules
# 
# Prereqs for docker:
#   - Addons for Oracle Linux 7 (x86_64) channel must be added in Spacewalk
#

# lint:ignore:unquoted_node_name lint:ignore:140chars

class profile::pr_asapnoc {

class { 'docker':
  use_upstream_package_source => false,
  version                     => '1.12.0-1.0.2.el7',
  proxy                       => 'http://pac.tsl.telus.com:8080',
}

class {'docker::compose':
  ensure  => present,
  version => '1.9.0',
  proxy   => 'https://pac.tsl.telus.com:8080',
}

# For reference svc_prov:x:15993:100:svc_prov:/home/svc_prov:/usr/bin/ksh
# Create the users group

group { 'users':
  ensure => present,
  gid    => '100',
}

# Create the svc_prov user for application account, set password

user { 'svc_prov':
  uid        => '15993',
  gid        => 'users',
  shell      => '/bin/bash',
  password   => pw_hash(lookup('asapnoc::app_account_password'), 'SHA-512','mysalt'),
  managehome => true,
  require    => Group['users'],
}

# Install apache

class { 'apache':
  apache_version => '2.4.6',
}

# Adding Sudo rules for docker and apache
# Do not change below 2 options, or original sudo file will get deleted

class { 'sudo':
  purge               => false,
  config_file_replace => false,
  }

# Include rules in “content”

sudo::conf { 'puppet_docker':
  priority => 10,
  content  => 'svc_prov ALL=NOPASSWD : /bin/docker, /sbin/service docker start, /sbin/service docker stop, /sbin/service docker restart, /sbin/service docker status, /usr/sbin/chkconfig docker on, /usr/sbin/chkconfig docker off, /sbin/service httpd start, /sbin/service httpd stop, /sbin/service httpd restart, /sbin/service httpd status, /usr/sbin/chkconfig httpd on, /usr/sbin/chkconfig httpd off',
  require  => User['svc_prov'],
  }

}

# lint:endignore