# Class: docker
#
# This class installs docker and its required packages
#
# Parameters:
#
# Actions:
#   - Install required packages
#   - Configure application account
#   - Create application directory
# 
# Prereqs:
#   - Optional, EPEL, and Software Collections channels must be added in Spacewalk
#

class profile::pr_docker {

class { 'docker':
  use_upstream_package_source => false,
  version                     => '1.12.0-1.0.2.el7',
}

# For reference svc_prov:x:15993:100:svc_prov:/home/svc_prov:/usr/bin/ksh
# Create the users group
group { 'users':
  ensure => present,
  gid    => '100',
}

# Create the svc_prov user for application account, set password
user { 'svc_prov':
  uid      => '15993',
  gid      => 'users',
  shell    => '/bin/bash',
  password => pw_hash(lookup('asapnoc::app_account_password'), 'SHA-512','mysalt'),
  require  => Group['users'],
}

# Adding Sudo rules for docker
# Do not change below 2 options, or original sudo file will get deleted
class { 'sudo':
  purge               => false,
  config_file_replace => false,
  }
# Include rules in “content”
sudo::conf { 'puppet_docker':
  priority => 10,
  content  => 'svc_prov ALL=NOPASSWD : /opt/puppetlabs/bin/puppet agent *, /bin/docker, /sbin/service docker start, /sbin/service docker stop, /sbin/service docker restart, /sbin/service docker status, /usr/sbin/chkconfig docker on, /usr/sbin/chkconfig docker off',
  require  => User['svc_prov'],
  }

file {'/etc/systemd/system/docker.service.d/puppet_test':
    ensure  => absent,
    content => "puppet test",
  } 

# proxy settings
file {'/etc/systemd/system/docker.service.d/http-proxy.conf':
    ensure  => present,
    content => '[Service]
Environment="HTTP_PROXY=http://pac.tsl.telus.com:8080/" "HTTPS_PROXY=http://pac.tsl.telus.com:8080/"',
  }

}
