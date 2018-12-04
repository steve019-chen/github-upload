node default {

  # Puppet agent custom settings
  class { 'puppet_agent_config::puppet_conf': }

  # LVM module used for creating non-rootvg filesystems
  class { 'lvm': }

# TELUS Lib module used for custom facts and functions
  include telus_lib

}

# Scheduled for deployment on Dec 4
# node ln98074,ln99606,ln99030,btln000004,ln98170,btln000001,ln98276,ln99556,btln002500,btln002517 {
#   class { 'role::rl_patrol_upgrade': }
# }

# lint:ignore:unquoted_node_name lint:ignore:140chars

node btlp007087, btlp007088,btlp007089,btlp007090,btlp007091,btlp007092,btlp007093,btlp007094,btlp007095,btlp007096,
btlp007097,btlp007098,btlp007099,btlp007100,btlp007101,btlp007102,btlp007103,btlp007104,btlp007105,btlp007106,
btlp007107,btlp007108,btlp007109,btlp007110,btlp007111,btlp007112,btlp007113,btlp007114,btlp007115,btlp007116 {
class { 'role::rl_bcg_shannon': }
}

node btln007523,btln007524,btln007717,btln007718,ln99773,ln99826, btln001649,btln001650,btln002025,btln002026,
btln002027,btln002028,btln007399,btln007401,btln007402,ln99694,ln99695,ln99696,ln99734,ln99735,ln99778,
ln99779,ln99784,ln99785,ln99788,ln99833,ln99834,ln99835,btln000045,btln000046,btln000047,btln000048,
btln001604,btln001605,btln002031,btln002032,btln002042,btln007253,btln007254,btln007528,btln007529,btln007568,
btln007569,btln007570,ln98312,ln98319,ln98320,ln98321,ln98556,ln98557,ln99227,ln99228,ln99229,ln99230,
ln99254,ln99665,ln99666,ln99667,ln99770,ln99771,ln99822,ln99823,ln99824,ln99147,ln99148,btln000011,
btln000012,ln99161,ln99162,ln98279,ln98280,ln99231,ln99232,ln99233,ln99234,ln98316,btln007386, btln007387,
btlp006328,btlp006329,btlp006330,btlp006331,btlp006332,btlp006333,btlp006334,btlp006335,btln000406,btln000409,
btln000408,ln98434,ln99217,ln98435,ln99216,ln98438,btln001602,btln001603,btln002029,btln002030,btln002041,
btln007255,btln007256,btln007530,btln007531,btln007571,btln007572,btln007573,ln98315,ln98317,ln98318,ln98559,
ln99663,ln99664,ln99772,ln99825,ln99827,ln99641,ln99642
{
class { 'role::rl_dynatrace': }
}

#20180703 - ROFS many IDCs - Puppet 5 Upgrade 
node ln98987.corp.ads,ln98988.corp.ads,ln98989.corp.ads,ln99045.corp.ads,ln99056.corp.ads,lp97019.corp.ads,lp97301.corp.ads,
lp97315.corp.ads,lp97513.corp.ads,lp97854.corp.ads,lp97897.corp.ads,lp97922.corp.ads,lp97949.corp.ads,lp97950.corp.ads,
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
