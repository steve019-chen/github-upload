# Class: pr_diversio
#
# This class installs and configures NGINX for Diversio project
#

class {'sudo':
  purge               => false,
  config_file_replace => false,
  }

class profile::pr_diversio {
 package {"nginx":
 ensure   => '1.14.2',
 }

# Include rules in “content”
sudo::conf { 'puppet_nginx':
  priority => 10,
  content  => 'infra ALL=NOPASSWD : /opt/puppetlabs/bin/puppet agent *, /sbin/service nginx start, /sbin/service nginx stop, /sbin/service nginx restart, /sbin/service nginx status',
  require  => User['infra'],
  }
}
#
