# Class: Role <insert name>
#
# This Role defines the profiles required by servers part of the <insert name / project>
#
# Parameters:
# Sharanya Comment 
# Actions:
#   - <insert text>
#  Steve's another comment on Jan 27th
#  edit on Jan28th
# Prereqs:
#   - <insert text>
# Steve
# Sharanya
class profile::pr_static_route {
# Comment
#Add version lock to docker package
#package {'yum-plugin-versionlock':
# ensure => present,
#}

# BT QIDC Linux servers get a static route to 100.125.167.240/28 via oMGmt
# BT KIDC Linux servers get a static route to 100.125.167.224/28 via oMGmt

$qidc_static = '100.125.167.240/28 via 100.66.96.1 dev mgmt0'
$kidc_static = '100.125.167.224/28 via 100.66.96.1 dev mgmt0'

case $facts['puppet_server']  {
  'btln007206.corp.ads': { $static_route = $kidc_static }     #KIDC SDE 
  'btln002494.corp.ads': { $static_route = $kidc_static }     #KIDC Non Prod
  'btlp000336.corp.ads': { $static_route = $kidc_static }     #KIDC Prod
  'btln000197.corp.ads': { $static_route = $qidc_static }     #QIDC Non Prod
  'btlp000966.corp.ads': { $static_route = $qidc_static }     #QIDC Prod
  # 'lp99604.corp.ads': { $static_route = '' }                #Laird
  # 'lp99605.corp.ads': { $static_route = '' }                #Toll8
  default:   { $static_route = '' }
  }
if ($facts['puppet_server'] in ['btln007206.corp.ads','btln002494.corp.ads','btln000197.corp.ads','btlp000336.corp.ads'])
{

  file_line { 'add_route_static':
    ensure             => present,
    path               => '/etc/sysconfig/network-scripts/route-mgmt0_backup_20jan2020',
    line               => $static_route,
    append_on_no_match => true,
  }

  # Copy the file down to the client
  file { '/var/tmp/setup_static_route_for_scanners':
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/profile/securityscanner/setup_static_route_for_scanners',
  }

  exec { '/var/tmp/setup_static_route_for_scanners':
    cwd     => '/var/tmp',
    creates => '/root/.puppet_flag_scanner_routes',
    require => File['/var/tmp/setup_static_route_for_scanners'],
  }
}
}
