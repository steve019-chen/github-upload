# Class: pr_diversio
#
# This class installs and configures NGINX for Diversio project
#

class {'sudo':
  purge               => false,
  config_file_replace => false,
  }

class profile::pr_diversio {
# package {"nginx":
# ensure   => '1.14.2',
# }


include nginx
#nginx::resource::server { 'ssl_server':
#  listen_port => 443,
#  ssl         => false,
#  server_name => ['ln98551.corp.ads'],
#}


######
#nginx::resource:server { 
#  log_format =>
#    {
#      'logstash_json' => 'escape=json \'{ "$request"}'',
#    }
#}
##
# Include rules in “content”
sudo::conf { 'puppet_nginx':
  priority => 10,
  #content  => 'infra ALL=NOPASSWD : /sbin/service nginx reload, /sbin/service nginx configtest,/sbin/service nginx start, /sbin/service nginx stop, /sbin/service nginx restart, /sbin/service nginx status',
  content  => 'infra ALL=NOPASSWD :  /bin/vi /etc/hosts, /usr/sbin/nginx *, /bin/vi /etc/sysconfig/iptables, /sbin/iptables-save > /etc/sysconfig/iptables,/sbin/service iptables restart, /sbin/iptables-save *, /opt/puppetlabs/bin/puppet agent -t, /sbin/service nginx *, /bin/vi /etc/nginx/conf.d *, /bin/vi /etc/nginx/nginx.conf, /sbin/iptables *, /bin/vi /etc/nginx/html/srv/policies/Saml1.1-SenderVouches.xml',
##
  }

#include localhost configuration
#host {'localhost':
#  ensure => 'present',
#  ip => '127.0.0.1',
#  host_aliases => ['xmlschema.tmi.telus.com', 'xmlschema'],
#  target => '/etc/hosts',
# }

 file {lookup("nginx_log_dirs"):
  ensure => "directory",
  owner  => "infra",
  group  => "infra"
 }

file { '/etc/nginx/conf.d/upstream.conf':
  ensure => "present",
  content => "",
  owner  => "infra",
  group  => "infra",
  replace => "no",
}

file { '/etc/nginx/conf.d/ssl_server.conf':
  ensure => "present",
  content => "",
  owner  => "infra",
  group  => "infra",
  replace => "no",
}

file { '/etc/nginx/html/srv/policies/Saml1.1-SenderVouches.xml':
  ensure => "present",
  content => "",
  owner  => "infra",
  group  => "infra",
  replace => "no",
}

file { '/etc/nginx/conf.d/nonssl_server.conf':
  ensure => "present",
  content => "",
  owner  => "infra",
  group  => "infra",
  replace => "no",
}

file { '/etc/nginx/ldap/daemon/backend-sample-app.py':
  ensure => "present",
  content => "",
  owner  => "infra",
  group  => "infra",
  replace => "no",
}

file { '/etc/nginx/ldap/daemon/nginx-ldap-auth-daemon.py':
  ensure => "present",
  content => "",
  owner  => "infra",
  group  => "infra",
  replace => "no",
}

file { '/etc/nginx/ldap/daemon/nginx-ldap-auth-daemon-ctl-rh.sh':
  ensure => "present",
  content => "",
  owner  => "infra",
  group  => "infra",
  replace => "no",
}

file { '/etc/nginx/nginx.conf':
    ensure    => present,
    owner     => 'infra',
    group      => 'infra',
}


file { '/etc/nginx/conf.d/default.conf':
    purge     => true,
}

exec { 'remove /etc/nginx/conf.d/default.conf file ':
     command  => "/bin/rm /etc/nginx/conf.d/default.conf",
     require  => File['/etc/nginx/conf.d/default.conf'],
}


}
##########