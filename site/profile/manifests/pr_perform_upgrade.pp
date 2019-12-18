# This profile contains the configuration for the 
#
# Parameters:
#
# Actions:
#   - 
# 
# lint:ignore:unquoted_node_name lint:ignore:140chars

class profile::pr_perform_upgrade (
Integer $space_needed = 310200000,
)
{

# For reference, as provided by Novo request: svc
# Create the users group

group { 'bmc':
  ensure => present,
  gid    => '3181',
}

# Create the user for application account, 

user { 'svcbmcp':
  uid     => '3181',
  gid     => 'users',
  shell   => '/bin/bash',
  require => Group['bmc'],
}


if (Float.new($facts['os']['release']['full']) >= 6.7)
{
# Agent 11.5.01
  $installtar = 'TSCO-perform-linux-latest.tar'
  $installdir = 'TSCO-perform-linux-latest'
}
elsif (Float.new($facts['os']['release']['full']) < 6.7 and Float.new($facts['os']['release']['full']) > 5.2)
{
# Agent 10.5.00  
  $installtar = 'TSCO-perform-linux-legacy.tar'
  $installdir = 'TSCO-perform-linux-legacy'
}
elsif (Float.new($facts['os']['release']['full']) < 6.7 and Float.new($facts['os']['release']['full']) > 5.2)
{
# Agent 9.05.0  
  $installtar = 'TSCO-perform-linux-old.tar'
  $installdir = 'TSCO-perform-linux-old'
}
else {
  # Do nothing
}

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

  archive { "/var/tmp/${installtar}":
  source        => "puppet:///software/perform_upgrade/${installtar}",
  extract       => true,
  creates => "/var/tmp/${installdir}",
  extract_path  => "/var/tmp/",
  cleanup => true,
  }

  file { "/var/tmp/${installdir}/install_wrapper.sh":
    #ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/profile/perform_upgrade/install_wrapper.sh',
    require => Archive["/var/tmp/${installtar}"],
  }
  
  exec {'performupgrade':
    command     => "/var/tmp/${installdir}/install_wrapper.sh",
    path        => ['/sbin','/bin','/usr/sbin','/usr/bin'],
    cwd         => "/var/tmp/${installdir}",
    environment => ['HOME=/home/svcbmcp'],
    creates     => '/var/tmp/perform_upgrade.status',
    timeout     => 3600,
    require => File["/var/tmp/${installdir}/install_wrapper.sh"],
  }

  # We have already completed, make sure we cleaned up.
  tidy {"/var/tmp/${installdir}":
    path => "/var/tmp/${installdir}",
    backup  => false,
    recurse => true,
    rmdirs  => true,
  }
}
}

# lint:endignore
