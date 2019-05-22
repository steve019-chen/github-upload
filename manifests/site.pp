node default {

  # Puppet agent custom settings
  class { 'puppet_agent_config::puppet_conf': }

  # LVM module used for creating non-rootvg filesystems
  class { 'lvm': }

# TELUS Lib module used for custom facts and functions
  include telus_lib

}

# lint:ignore:unquoted_node_name lint:ignore:140chars

# 20190522  - Patrol ROFS module Non-prod - First large group
node lp97324,lp99485,lp99480,btlp001979,tslp000652,btlp006468,btln002741,btlp002459,btlp000821,btln000390,btln002485,btln002860,btlp001944,btlp000419,btlp001378,btln007345,btlp002405,btlp006530,btlp000828,btlp001447,btln000502,btlp001065,tslp000050,lp98165,ln99631,lp99050,ln99674,ln99683,lp99405,ln99647,lp99519,lp99529,ln98818,ln99860,lp99370,lp97454,lp98954,ln99843,lp97412,lp98934,ln99849,ln99161,ln98817,lp99589,lp99565,lp99594,lp99435,lp99563,lp99601,lp99577,lp99593,lp99598,lp99574,lp99579,lp98185,lp99580,lp99585,lp99710,lp99578,lp99564,lp98184,lp98183,lp99677,lp98186,lp97927,lp97928,btln007588,btlp000881,btlp002523,btln001302,btlp006538,btln000465,btlp006277,btln001284,btln002583,btlp002315,btlp002019,tslp000212,btln001193,tslp000287,btlp002401,btlp001580,btln007131,btlp000880,tslp000540,btln001978,tqpldap11,tqpjobs6,ln98892,tqtwas02,pqmgt008,tqpwas13,tqawas03,tqpldap12,tqtwas01,tqpwas08,tqpwas09,lp97301,lp97013,lp97831,ln98175,abapp216,ln98535,lp97092,lp97024,lp98052,ln98534,ln99543,lp99607,ln98753,lp98051,ln99611,lp97088,ln98949,lp99608,lp99317,lp99472
{
  class { 'role::rl_patrol_rofs': }
}

# 20190516 CRQ49076 - Patrol ROFS module testing - Initial
node btln000075,btln000397,btln007170,btln000941,ln98875,ln98618,ln99917,ln99845,ln99605,ln99180
{
  class { 'role::rl_patrol_rofs': }
}

# 20190222 CRQ37712 - Project Diversio
node ln98551,btln007486,lp97396,lp99440,lp99538,lp97817,lp97397,lp97728
{
  include role::rl_diversio
}

# # 2019/04/22 CRQ45306 - Patrol upgrade group 8
# node ln98077,ln98090,ln98093,ln98155,ln98156,ln98157,ln98158,ln98163,ln98178,
# ln98200,ln98201,ln98202,ln98203,ln98204,ln98252,ln98253,ln98254,ln98255,
# ln98256,ln98260
# {
#   class { 'role::rl_patrol_upgrade': }
# }

# 20190425 CRQ45615 - Project ASAPNOC

node btln007808, btln007809, btln007769, btln007770, btlp007033, btlp007034, btlp007037, btlp007038
{
  include role::rl_asapnoc
}

# BCG Shannon project 

node btlp007087, btlp007088,btlp007089,btlp007090,btlp007091,btlp007092,btlp007093,btlp007094,btlp007095,btlp007096,
btlp007097,btlp007098,btlp007099,btlp007100,btlp007101,btlp007102,btlp007103,btlp007104,btlp007105,btlp007106,
btlp007107,btlp007108,btlp007109,btlp007110,btlp007111,btlp007112,btlp007113,btlp007114,btlp007115,btlp007116 {
class { 'role::rl_bcg_shannon': }
}

# Dynatrace agent

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
ln99663,ln99664,ln99772,ln99825,ln99827,ln99641,ln99642,btln007390,btln007388,btln003020,ln99235,ln99236,btln001256,btln001257,ln99712
{
class { 'role::rl_dynatrace': }
}


#20190213 - CRQ37097 : ROFS many IDCs - Puppet 5 Upgrade 
# node btlp000812
# {
#   class {'::puppet_agent':
#     package_version => '5.5.1',
#     service_names   => ['puppet'],
#     manage_repo     => false,
#   }
# }

# lint:endignore
