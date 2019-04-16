# Class: pr_diversio
#
# This class installs and configures NGINX for Diversio project
#

class profile::pr_diversio {
  package {'nginx':
  ensure   => '1.14.2',
  }

  class {'sudo':
    purge               => false,
    config_file_replace => false,
    }

  # Configure sudo rules for Diversio
  sudo::conf { 'puppet_nginx':
    priority => 10,
    #content  => 'infra ALL=NOPASSWD : /sbin/service nginx reload, /sbin/service nginx configtest,/sbin/service nginx start, /sbin/service nginx stop, /sbin/service nginx restart, /sbin/service nginx status',
    content  => 'infra ALL=NOPASSWD :  /bin/vi /etc/hosts, /usr/sbin/nginx *, /bin/vi /etc/sysconfig/iptables, /sbin/iptables-save > /etc/sysconfig/iptables,/sbin/service iptables restart, /sbin/iptables-save *, /opt/puppetlabs/bin/puppet agent -t, /sbin/service nginx *, /bin/vi /etc/nginx/conf.d *, /bin/vi /etc/nginx/nginx.conf, /sbin/iptables *, /bin/vi /etc/nginx/html/srv/policies/Saml1.1-SenderVouches.xml',
  }

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
    ensure => 'directory',
    owner  => 'infra',
    group  => 'infra',
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
    ensure => 'present',
    owner  => 'infra',
    group  => 'infra',
  }

  file { '/etc/nginx/ldap/daemon/nginx-ldap-auth-daemon-ctl-rh.sh':
    ensure => 'present',
    owner  => 'infra',
    group  => 'infra',
    mode   => '0755',
  }

  file { '/etc/nginx/conf.d/default.conf':
      ensure     => absent,
  }

}

