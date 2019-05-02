# Class: pr_diversio
#
# This class installs and configures NGINX for Diversio project
#

class profile::pr_diversio {

  $nginx_package = 'nginx-1.14.2'

  # Install NGINX GPG Key
  file { 'RPM-GPG-KEY-NGINX':
    ensure => present,
    path   => '/etc/pki/rpm-gpg/RPM-GPG-KEY-NGINX',
    source => 'puppet:///modules/telus_lib/RPM-GPG-KEY-NGINX',
  }

  gpg_key { 'NGINX':
    path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-NGINX',
  }

  # Install NGINX package
  package {'nginx':
    ensure  => '1.14.2',
    require => Gpg_key['NGINX'],
  }


  #Add version lock to nginx package
  package {'yum-plugin-versionlock':
    ensure => present,
  }

  exec { "yum versionlock ${nginx_package}":
    path    => '/bin:/usr/bin:/usr/sbin:/bin',
    unless  => "cat /etc/yum/pluginconf.d/versionlock.list | grep -q ${nginx_package} > /dev/null",
    require => Package['yum-plugin-versionlock'],
  }

  file_line { 'yum_versionlock_config':
    ensure             => present,
    path               => '/etc/yum/pluginconf.d/versionlock.conf',
    line               => 'show_hint = 0',
    match              => 'show_hint = 1',
    append_on_no_match => false,
    require            => Package['yum-plugin-versionlock'],
  }

  # Configure sudo rules for Diversio
  class {'sudo':
    purge               => false,
    config_file_replace => false,
    }
# lint:ignore:140chars
  sudo::conf { 'puppet_nginx':
    priority => 10,
    content  => 'infra ALL=NOPASSWD : /sbin/service nginx reload, /sbin/service nginx configtest, /sbin/service nginx start, /sbin/service nginx stop, /sbin/service nginx restart, /sbin/service nginx status, /usr/sbin/service nginx reload, /usr/sbin/service nginx configtest, /usr/sbin/service nginx start, /usr/sbin/service nginx stop, /usr/sbin/service nginx restart, /usr/sbin/service nginx status',
  }
# lint:endignore

  # Create NGINX log directories
  $nginx_log_dirs = [ '/work/infra/nginx',
    '/work/infra/nginx/cache',
    '/etc/nginx/ldap/',
    '/etc/nginx/ldap/daemon/',
    '/work/infra/logs',
    '/work/infra/logs/nginx',
    '/etc/nginx/html',
    '/etc/nginx/html/srv',
    '/etc/nginx/html/srv/policies',]

  file { $nginx_log_dirs:
    ensure  => 'directory',
    owner   => 'infra',
    group   => 'infra',
    require => Package['nginx'],
  }

  # Create NGINX config files
  $nginx_conf_files = [ '/etc/nginx/conf.d/upstream.conf',
    '/etc/nginx/conf.d/ssl_server.conf',
    '/etc/nginx/html/srv/policies/Saml1.1-SenderVouches.xml',
    '/etc/nginx/conf.d/nonssl_server.conf',
    '/etc/nginx/ldap/daemon/backend-sample-app.py',
    '/etc/nginx/ldap/daemon/nginx-ldap-auth-daemon.py',
    '/etc/nginx/nginx.conf',]

  file { $nginx_conf_files:
    ensure  => 'present',
    owner   => 'infra',
    group   => 'infra',
    require => Package['nginx'],
  }

  file { '/etc/nginx/ldap/daemon/nginx-ldap-auth-daemon-ctl-rh.sh':
    ensure  => 'present',
    owner   => 'infra',
    group   => 'infra',
    mode    => '0755',
    require => File[$nginx_log_dirs],
  }

  file { '/etc/nginx/conf.d/default.conf':
      ensure     => absent,
  }

}

