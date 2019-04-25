# This profile contains the configuration for the ASAPNOC application servers
#
# Parameters:
#
# Actions:
#   - Subscribe the machine to Docker channel in Spacewalk
#   - Download then install gpg keys for repo
#   - Install required packages for docker and configure docker (proxy settings, ...)
#   - Lock docker version, so it does not get updated automatically during patching cycles
#   - Lock apache version, so it does not get updated automatically during patching cycles
#   - Configure application account
#   - Create application account home directory
#   - Install apache
#   - Add sudo rules
# 
# Prereqs for docker:
#   - docker-ce-rhel7-x86_64 channel must exist in Spacewalk
#   - Manually add machines to the docker channel in Spacewalk
#

# lint:ignore:unquoted_node_name lint:ignore:140chars

class profile::pr_asapnoc {

telus_lib::spacewalk_channel { 'docker': }

# Install docker
class { 'docker':
  use_upstream_package_source => false,
  version                     => '18.09.3-3.el7',
  proxy                       => 'http://pac.tsl.telus.com:8080',
}

# Install docker compose
class {'docker::compose':
  ensure  => present,
  version => '1.9.0',
  proxy   => 'https://pac.tsl.telus.com:8080',
}

# Install apache

class { 'apache':
  apache_version => '2.4.6',
}

# Utilizing the versionlock defined type created in telus_lib module
$versionlock_apps = ['docker-ce','apache',]
telus_lib::versionlock { $versionlock_apps : }

# For reference, as provided by Novo request: svc_prov:x:15993:100:svc_prov:/home/svc_prov:/usr/bin/ksh
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
