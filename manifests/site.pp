node default {

  # Puppet agent custom settings
  class { 'puppet_agent_config::puppet_conf': }

  # LVM module used for creating non-rootvg filesystems
  class { 'lvm': }

# TELUS Lib module used for custom facts and functions
  include telus_lib

}

# lint:ignore:unquoted_node_name lint:ignore:140chars

# CRQ25015 2018/11/02 Flexera agent install

# node ln98057,ln98058,ln98070,ln98071,ln98072,ln98073,ln98074,ln98075,ln98080,ln98081,ln98082,ln98087,
# ln98088,ln98089,ln98090,ln98091,ln98092,ln98093,ln98142,ln98144,ln98152,ln98153,ln98154,ln98155,ln98156,
# ln98157,ln98161,ln98200,ln98201,ln98202,ln98203,ln98204,ln98251,ln98252,ln98253,ln98254,ln98255,ln98256,
# ln98257,ln98300,ln98301,ln98302,ln98310,ln98311,ln98312,ln98313,ln98314,ln98315,ln98316,ln98317 {
#   class { 'role::rl_flexera': }
# }

# Flexera testing

node ln-test11 {
  class { 'role::rl_flexera': }
}

node btlp007087.corp.ads, btlp007088.corp.ads, btlp007089.corp.ads, btlp007090.corp.ads, btlp007091.corp.ads, btlp007092.corp.ads,
btlp007093.corp.ads, btlp007094.corp.ads, btlp007095.corp.ads, btlp007096.corp.ads, btlp007097.corp.ads, btlp007098.corp.ads,
btlp007099.corp.ads, btlp007100.corp.ads, btlp007101.corp.ads, btlp007102.corp.ads, btlp007103.corp.ads, btlp007104.corp.ads,
btlp007105.corp.ads, btlp007106.corp.ads {
class { 'role::rl_bcg_shannon': }
}

node btln007523,btln007524,btln007717,btln007718,ln99773,ln99826, btln001649,btln001650,btln002025,btln002026,
btln002027,btln002028,btln007399,btln007401,btln007402,ln99694,ln99695,ln99696,ln99734,ln99735,ln99778,
ln99779,ln99784,ln99785,ln99788,ln99833,ln99834,ln99835,btln000045,btln000046,btln000047,btln000048,
btln001604,btln001605,btln002031,btln002032,btln002042,btln007253,btln007254,btln007528,btln007529,btln007568,
btln007569,btln007570,ln98319,ln98320,ln98321,ln98556,ln98557,ln99227,ln99228,ln99229,ln99230,
ln99254,ln99665,ln99666,ln99667,ln99770,ln99771,ln99822,ln99823,ln99824,ln99147,ln99148,btln000011,
btln000012,ln99161,ln99162,ln98279,ln98280,ln99231,ln99232,ln99233,ln99234,ln98316,btln007386, btln007387,
btlp006328,btlp006329,btlp006330,btlp006331,btlp006332,btlp006333,btlp006334,btlp006335,btln000406,btln000409,
btln000408,ln98434,ln99217,ln98435,ln99216,ln98438,sedm3235
{
class { 'role::rl_dynatrace': }
}

#20180703 - ROFS many IDCs - Puppet 5 Upgrade 
node ln98987.corp.ads,ln98988.corp.ads,ln98989.corp.ads,ln99045.corp.ads,ln99056.corp.ads,lp97019.corp.ads,lp97301.corp.ads,
lp97315.corp.ads,lp97513.corp.ads,lp97831.corp.ads,lp97854.corp.ads,lp97897.corp.ads,lp97922.corp.ads,lp97949.corp.ads,lp97950.corp.ads,
lp97952.corp.ads,lp97953.corp.ads,lp99378.ent.agt.ab.ca,lp99537.corp.ads,lp99606.corp.ads,lp99607.corp.ads,lp99608.corp.ads,lp99609.corp.ads {
  class {'::puppet_agent':
    package_version => '5.5.1',
    service_names   => ['puppet'],
    manage_repo     => false,
  }
}

#20180919 - Puppet 4 to Puppet 5 Upgrade
# node btln007194, lp99709, btln007191,btln007189,btln002468,btln001691,btln007190,btln007197,btln007187,btln000209,tslp000005,btln007192 {
#   class {'::puppet_agent':
#     package_version => '5.5.1',
#     service_names   => ['puppet'],
#     manage_repo     => false,
#   }
# }

# lint:endignore
