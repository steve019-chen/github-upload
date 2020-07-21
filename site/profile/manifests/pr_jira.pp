# This profile contains the configuration for the ASAPNOC application servers
#
# Parameters:
#
# Actions:
#   - Configure application account
#   - Create application account home directory
#   - Add sudo rules

class profile::pr_jira {

  # Download and Install GPG Key
  $key_file = 'RPM-GPG-KEY-DOCKER-CE'
  $key_name = 'DOCKER-CE'
  $docker_channel = 'docker-ce-rhel7-x86_64'
  $addons_channel = 'oraclelinux7-x86_64-addons'

  file { $key_file:
    ensure => present,
    path   => "/etc/pki/rpm-gpg/${key_file}",
    source => "puppet:///modules/telus_lib/${key_file}",
  }

  gpg_key { $key_name:
    path    => "/etc/pki/rpm-gpg/${key_file}",
  }

  # Subscribe to Docker channel
  telus_lib::yum_channel { $docker_channel:
    ensure => present,
  }

  # Subscribe to Add-ons channel
  telus_lib::yum_channel { $addons_channel:
    ensure => present,
  }

  # Install docker
  # Note: proxy just sets the configuration after installing docker
  # this does not get used when downloading the package, this proxy 
  # is used when connecting to docker hub to download the images
  class { 'docker':
    use_upstream_package_source => false,
    version                     => '18.09.3-3.el7',
    proxy                       => 'http://pac.tsl.telus.com:8080',
    no_proxy                    => '.corp.ads,.tsl.telus.com,localhost,127.0.0.1',
    log_driver                  => 'json-file',
    log_opt                     => ['max-size=10m', 'max-file=5'],
    require                     => [ Telus_lib::Yum_channel[$docker_channel], Telus_lib::Yum_channel[$addons_channel], Gpg_key[$key_name] ],
  }

  # Install docker compose
  class {'docker::compose':
    ensure  => present,
    version => '1.26.0',
    proxy   => 'https://pac.tsl.telus.com:8080',
  }

  # Install apache
  class { 'apache':}
  
  $apache_dirs = ['/etc/httpd/conf',
    '/etc/httpd/conf.d',
    '/etc/httpd/conf.modules.d',
    '/etc/httpd/logs',
    '/var/www',
    '/var/www/html',
    '/var/www/cgi-bin',
    '/var/log/httpd',
    '/data',
    '/data/httpd',
    '/data/httpd/log',]

  file { $apache_dirs:
    ensure  => 'directory',
    owner   => 'svc_jira',
    group   => 'root',
    mode   => '0770',
  }

  # For reference, as provided by Cadmus svc_jira:x:16257:100:Ryan Chan a/r 1307258:/home/svc_jira:/usr/bin/ksh
  # Create the users group
  group { 'users':
    ensure => present,
    gid    => '100',
  }

  # Create the svc_prov user for application account, set password
  user { 'svc_jira':
    uid        => '16257',
    gid        => 'users',
    groups     => 'docker',
    password   => pw_hash(lookup('jira::app_account_password'), 'SHA-512','mysalt'),
    managehome => true,
    require    => [ Group['users'], Class['docker'] ],
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
    content  => @("EOT"/L)
      svc_jira ALL=NOPASSWD : \
      /etc/init.d/httpd, \
      /bin/docker, \
      /sbin/service httpd start, \
      /sbin/service httpd stop, \
      /sbin/service httpd restart, \
      /sbin/service httpd status, \
      /bin/systemctl daemon-reload, \
      /sbin/service docker start, \
      /sbin/service httpd stop, \
      /sbin/service docker restart, \
      /sbin/service docker status, \
      /sbin/service mysqld start, \
      /sbin/service mysqld stop, \
      /sbin/service mysqld restart, \
      /sbin/service mysqld status, \
      /bin/systemctl enable mysqld.service, \
      /bin/systemctl disable mysqld.service, \
      /bin/systemctl start mysqld.service, \
      /bin/systemctl stop mysqld.service, \
      /bin/systemctl status mysqld.service, \
      /sbin/service postgresql-11 start, \
      /sbin/service postgresql-11 stop, \
      /sbin/service postgresql-11 restart, \
      /bin/systemctl enable postgresql-11.service, \
      /bin/systemctl disable postgresql-11.service, \
      /bin/systemctl start postgresql-11.service, \
      /bin/systemctl stop postgresql-11, \
      /bin/systemctl status postgresql-11, \
      /sbin/service jira start, \
      /sbin/service jira stop, \
      /sbin/service jira restart, \
      /sbin/service jira status, \
      /usr/sbin/chkconfig httpd on, \
      /usr/sbin/chkconfig httpd off, \
      /usr/sbin/chkconfig mysqld on, \
      /usr/sbin/chkconfig mysqld off, \
      /usr/sbin/chkconfig postgresql on, \
      /usr/sbin/chkconfig postgresql off, \
      /usr/sbin/chkconfig docker on, \
      /usr/sbin/chkconfig docker off
      | -EOT
  }
  sudo::conf { 'puppet_jira_mysql':
    priority => 10,
    content  => 'svc_jira ALL=(mysql) NOPASSWD: ALL',
  }
  sudo::conf { 'puppet_jira_postgres':
    priority => 10,
    content  => 'svc_jira ALL=(postgres) NOPASSWD: ALL',
  }
  sudo::conf { 'puppet_agent':
    priority => 20,
    content  => 'svc_jira ALL=NOPASSWD : /opt/puppetlabs/bin/puppet agent -t , /opt/puppetlabs/bin/puppet agent -t --debug',
  }

  file_line { 'add_crontab_access':
    ensure             => 'present',
    path               => '/etc/cron.allow',
    line               => 'svc_jira',
    match              => 'svc_jira',
    append_on_no_match => 'true',
  }

  # case $facts['os']['release']['major']  {
  #   '5': { $provider = 'redhat' }
  #   '6': { $provider = 'redhat' }
  #   '7': { $provider = 'redhat' }   #switch to using systemd with a unit file
  #   default:   { $provider = 'redhat' }
  # }

  # Create application directories
  $jira_app_dirs = ['/apps',
    '/apps/jira',
    '/apps/java',
    '/apps/scripts',
    '/apps/ssl',
    '/data',
    '/data/jira',
    '/data/backups',
    '/data/installers',
    '/data/wwwroot',]

  file { $jira_app_dirs:
    ensure  => 'directory',
    owner   => 'svc_jira',
    group   => 'users',
    mode   => '0755',
  }

  # file { '/etc/init.d/TELUS_jira_control':
  #   ensure => 'present',
  #   owner  => 'root',
  #   group  => 'root',
  #   mode   => '0755',
  #   source => 'puppet:///modules/profile/jira/TELUS_jira_control',
  #   notify => Service['TELUS_jira_control'],
  # }

  # service { 'TELUS_jira_control':
  #   enable    => true,
  #   hasstatus => false,
  #   provider  => $provider,
  # }
}
