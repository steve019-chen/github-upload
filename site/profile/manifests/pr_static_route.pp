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
if ($facts['telus_site'] = 'QIDC' or $facts['telus_site'] ='KIDC')
{
  case $facts['os']['release']['major']  {
      '5': { $provider = 'redhat' }
      '6': { $provider = 'redhat' }
      '7': { $provider = 'redhat' }   #switch to using systemd with a unit file
      default:   { $provider = 'redhat' }
    }

  Service { 'network':
      ensure   => 'running',
      provider => $provider,
      enable   => true,
      restart  => 'systemctl restart network',
      }

  file_line { 'add_route_static':
    ensure             => present,
    path               => '/etc/sysconfig/network-scripts/route-mgmt0_backup_20jan2020',
    line               => $static_route,
    append_on_no_match => true,
    notify             => Service['network'],
  }
}
}
