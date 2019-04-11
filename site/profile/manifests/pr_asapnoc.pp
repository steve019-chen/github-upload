# This profile contains the configuration for the ASAPNOC application servers
#
# Parameters:
#
# Actions:
#   - Subscribe the machine to Docker channel in Spacewalk
#   - Download then install gpg keys for repo
#   - Install required packages for docker and configure docker (proxy settings, ...)
#   - Lock docker version, so it does not get updated automatically during patching cycles
#   - Configure application account
#   - Create application directory
#   - Install apache
#   - Add sudo rules
# 
# Prereqs for docker:
#   - docker-ce-rhel7-x86_64 channel must exist in Spacewalk
#

class profile::pr_asapnoc {

  # Ensuring server is subscribed to recieve packages from spacewalk for Docker
  telus_lib::spacewalk_channel { 'docker-ce-rhel7-x86_64': }

  # Download and Install Docker-ce GPG Key
  file { 'RPM-GPG-KEY-DOCKER-CE':
    ensure => present,
    path   => '/etc/pki/rpm-gpg/RPM-GPG-KEY-DOCKER-CE',
    source => 'puppet:///modules/telus_lib/RPM-GPG-KEY-DOCKER-CE',
  }

  gpg_key { 'DOCKER-CE':
    path    => '/etc/pki/rpm-gpg/RPM-GPG-KEY-DOCKER-CE',
    require => File['RPM-GPG-KEY-DOCKER-CE'],
  }

# Install docker
class { 'docker':
  use_upstream_package_source => false,
  version                     => '18.09.3-3.el7',
  proxy                       => 'http://pac.tsl.telus.com:8080',
  require                     => Gpg_key['DOCKER-CE'],
}

# Install docker compose
class {'docker::compose':
  ensure  => present,
  version => '1.9.0',
  proxy   => 'https://pac.tsl.telus.com:8080',
  require => Gpg_key['DOCKER-CE'],
}

# Utilizing puppet-yum module for installing and setting versionlock plugin and locking docker version
# yum::versionlock { '3:docker-ce-18.09.3-3.el7.*':
#   ensure  => present,
# }

package {'versionlock':
  name   => 'yum-plugin-versionlock',
  ensure => present,
}

# file {'dockerversion_lock':
#   ensure  => present,
#   path    => '/etc/yum/pluginconf.d/versionlock.list',
#   content => '0:docker-ce-18.09.3-3.el7.*',
#   replace => false,
#   require => Package['versionlock'],
# }

$apptolock01 = 'docker-ce-18.09.3-3'
exec { "yum versionlock ${apptolock01}":
  path   => '/bin:/usr/bin:/usr/sbin:/bin',
  unless => "cat /etc/yum/pluginconf.d/versionlock.list | grep -q ${apptolock01} > /dev/null",
}



file_line { 'yum_versionlock_config':
  ensure  => present,
  path    => '/etc/yum/pluginconf.d/versionlock.conf',
  line    => 'show_hint = 0',
  match   => 'show_hint = 1',
  require => Package['versionlock'],
}
# For reference, as provided by Novo request: svc_prov:x:15993:100:svc_prov:/home/svc_prov:/usr/bin/ksh
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

# apache
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
