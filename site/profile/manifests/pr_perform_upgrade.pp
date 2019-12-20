# This profile contains the configuration for the 
#
# Parameters: 
#
# Actions: 
#   - 
# 
# lint: ignore: unquoted_node_name lint: ignore: 140chars

class profile::pr_perform_upgrade (
Integer $space_needed = 310200000,
String  $hostname     = $facts['hostname'],
)
{

# Required user uid = 3181(svcbmcp) gid = 3181(bmc) groups = 3181(bmc) context = unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
# Create the users group

group { 'bmc':
  ensure => present,
  gid    => '3181',
}

# Create the user for application account, 

user { 'svcbmcp':
  uid     => '3181',
  gid     => 'bmc',
  shell   => '/bin/bash',
  require => Group['bmc'],
}


if (Float.new($facts['os']['release']['full']) >= 5.7)
{
# Agent 11.5.01
  $installtar = 'TSCO-perform-linux-latest.tar'
  $installdir = 'TSCO-perform-linux-latest'
}
elsif (Float.new($facts['os']['release']['full']) >= 5.2 and Float.new($facts['os']['release']['full']) < 5.7)
{
# Agent 10.5.00  
  $installtar = 'TSCO-perform-linux-legacy.tar'
  $installdir = 'TSCO-perform-linux-legacy'
}
elsif (Float.new($facts['os']['release']['full']) >= 5.0 and Float.new($facts['os']['release']['full']) < 5.2)
{
# Agent 9.05.0  
  $installtar = 'TSCO-perform-linux-old.tar'
  $installdir = 'TSCO-perform-linux-old'
}
else {
  # lint: ignore: 140chars
  notify{
    "Unsupported version of linux OS": 
  }
  #Force an error at runtime
  exec{'perform_upgrade_not_supported_os':
    command => '/bin/false',
  }  
}

$patrol = $facts['patrol_info']

if $space_needed > $patrol['var_tmp_bytes'] {
  # lint: ignore: 140chars
  notify{
    "Filesystem ${patrol['var_tmp_fs']} too full. Need ${space_needed} bytes in /var/tmp but only ${patrol['var_tmp_bytes']} available": 
  }
  #Force an error at runtime
  exec{'perfom_upgrade_no_space':
    command => '/bin/false',
  }
}
else {

  # download the TAR file and extract into the installdir.
  archive { "/var/tmp/${installtar}":
  source       => "puppet:///software/perform_upgrade/${installtar}",
  extract      => true,
  #creates      => "/var/tmp/${installdir}",
  extract_path => "/var/tmp/",
  cleanup      => true,
  }

  # Perfom the installation using the provide telusinstall.sh.
  exec {'performupgrade':
    command     => "/var/tmp/${installdir}/telusinstall.sh",
    path        => ['/sbin','/bin','/usr/sbin','/usr/bin'],
    cwd         => "/var/tmp/${installdir}",
    environment => ['HOME=/home/svcbmcp'],
    creates     => "/tmp/TSCO_${hostname}_Install.txt",
    timeout     => 3600,
    require     => Archive["/var/tmp/${installtar}"],
  }

  # We have already completed, make sure we clean up the directory.
  tidy {"/var/tmp/${installdir}/":
    path    => "/var/tmp/${installdir}/",
    backup  => false,
    recurse => true,
    rmdirs  => true,
  }
}
}
# lint: endignore
