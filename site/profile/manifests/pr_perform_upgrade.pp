# This profile contains the configuration for the 
#
# Parameters:
#
# Actions:
#   - 
# 
# Prereqs for docker:
#   - 
# lint:ignore:unquoted_node_name lint:ignore:140chars

class profile::pr_perform_upgrade (
Integer $space_needed = 310200000,
Float $os_full = $facts['os']['release']['full'].scanf('%f')[0],
)
{

# For reference, as provided by Novo request: svc
# Create the users group

group { 'bmc':
  ensure => present,
  gid    => '3181',
}

# Create the  user for application account, 

user { 'svcbmcp':
  uid     => '3181',
  gid     => 'users',
  shell   => '/bin/bash',
  require => Group['bmc'],
}


# if (os_full >= 5.5)
# {
   $installtar = 'TSCO-perform-linux-latest.tar'
# }
# elsif (os_full < 5.5 and os_full > 5.0)
# {
#   $installtar = 'TSCO-perform-linux-legacy.tar'
# }
# else {
#   # Do nothing
# }

$patrol=$facts['patrol_info']

if $space_needed > $patrol['var_tmp_bytes'] {
  # lint:ignore:140chars
  notify{
    "Filesystem ${patrol['var_tmp_fs']} too full. Need ${space_needed} bytes in /var/tmp but only ${patrol['var_tmp_bytes']} available":
  }
  #Force an error at runtime
  exec{'patrol_upgrade_no_space':
    command => '/bin/false',
  }
}
else {

# Download tar file
# lint:ignore:puppet_url_without_modules
  # file { $installtar:
  #   ensure => present,
  #   path   => "/var/tmp/${installtar}",
  #   mode   => '0755',
  #   owner  => 'svcbmcp',
  #   group  => 'bmc',
  #   source => "puppet:///software/perform_upgrade/${installtar}",
  # }
  
  archive { "/var/tmp/${installtar}":
  source        => "puppet:///software/perform_upgrade/${installtar}",
  extract       => true,
  extract_path  => "/var/tmp/",
  }

  exec {'performupgrade':
    command     => 'su -c /var/tmp/patrol_rofs/install.sh svcbmcp',
    path        => ['/sbin','/bin','/usr/sbin','/usr/bin'],
    cwd         => "/var/tmp/${installtar}",
    environment => ['HOME=/home/svcbmcp'],
    creates     => '/opt/bmc/perform_upgrade.status',
    timeout     => 3600,
    require     => File[$installtar]
  }

  # We have already completed, make sure we cleaned up.
  tidy {'/var/tmp/patrol_rofs':
    backup  => false,
    recurse => true,
    rmdirs  => true,
  }
}
}

# lint:endignore
