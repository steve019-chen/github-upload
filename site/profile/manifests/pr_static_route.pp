# Class: Profile pr_static_route
#
# This class is developed for security vulnerability scanner to add a static route
# to add all BT KIDC/QIDC NP/PR Linux servers.
#
# Parameters:
#     - N/A
# Actions: 
#     - Add a static route to active routing table through the script
#     - Add a static route to relevant interface  through the script
#     - Provide connectivity to KIDC/QIDC new vulnerability scanner subnet
#   
# Prereqs:
#   profile/securityscanner/setup_static_route_for_scanners must be required for adding static route 
#   
# lint:ignore:140chars
class profile::pr_static_route {

# BT QIDC Linux servers get a static route to 100.125.167.240/28 via oMGmt
# BT KIDC Linux servers get a static route to 100.125.167.224/28 via oMGmt

if ($facts['kernel'] in ['Linux'] and $facts['puppet_server'] in ['btln007206.corp.ads','btln002494.corp.ads','btln000197.corp.ads','btlp000336.corp.ads','btlp000966.corp.ads'])
{
  # Copy the file down to the client
  file { 'setup_static_route_for_scanners':
    ensure => 'present',
    path   => '/var/tmp/setup_static_route_for_scanners',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/profile/securityscanner/setup_static_route_for_scanners',
    before => Exec['setup_static_route_for_scanners'],
  }

  exec { 'setup_static_route_for_scanners':
    command => '/var/tmp/setup_static_route_for_scanners',
    cwd     => '/var/tmp',
    path    => ['/sbin','/bin','/usr/sbin','/usr/bin'],
    creates => '/root/.puppet_flag_scanner_routes',
    timeout => 3600,
  }
}
}
# lint:endignore
