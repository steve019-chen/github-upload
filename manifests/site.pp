node default {

  # Puppet agent custom settings
  class { 'puppet_agent_config::puppet_conf': }

  # LVM module used for creating non-rootvg filesystems
  class { 'lvm': }

# TELUS Lib module used for custom facts and functions
  include telus_lib

}

# lint:ignore:unquoted_node_name lint:ignore:140chars

# 20190523  - Patrol ROFS module Non-prod - First large group
node btln002741,btln000390,btln002485,btln002860,btln007345,btln000502,btln001894,btln001852,btln000626,btln001441,btln003033,btln002568,btln002854,btln001437,btln001806,btln001766,btln002093,btln002721,btln001736,btln002772,ln99631,ln99674,ln99683,ln99647,ln98818,ln99860,ln99843,ln99849,ln99161,ln98817,ln99242,ln98764,ln99582,ln99530,ln99280,ln99858,ln99240,ln99394,ln99004,ln98761,ln99191,btln007588,btln001302,btln000465,btln001284,btln002583,btln001193,btln007131,btln001978,btln001318,btln007577,btln002585,btln000320,btln001134,btln000357,btln002040,btln002629,btln007560,btln007578,btln001207,btln001106,ln98892,tqtwas02,pqmgt008,tqawas03,tqtwas01,ln98175,abapp216,ln98535,ln98534,ln99543,ln98753,ln99611,ln98949,ln98759,ln99544,ln99510,ln98429,ln99545,ln98587,ln98088,ln98749,ln98487,ln98954,ln99266,ln98755
{
  class { 'role::rl_patrol_rofs': }
}

# 20190222 CRQ37712 - Project Diversio
node ln98551,lp97396,lp99440,lp99538,lp97817,lp97397,lp97728
{
  include role::rl_diversio
}

# 2019/05/23 CRQ49762 - Patrol upgrade group 9
node ln98093,ln98423,ln98257,ln98300,ln98301,ln98302,ln98310,ln98311,ln98424,
ln98425,ln98432,ln98433,ln98444,ln98445,ln98448,ln98449,ln98450,ln98451,
ln98456,ln98496,ln98497,ln98505,ln98509,ln98510,ln98511,ln98512,ln98517,
ln98518,ln98519,ln98520,ln98546,ln98558,ln98570,ln98571,ln98573,ln98574,
ln98577,ln98581,ln98582,ln98583,ln98584,ln98585,ln98586,ln98587,ln98588,
ln98590,ln98591
{
  class { 'role::rl_patrol_upgrade': }
}

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
ln99663,ln99664,ln99772,ln99825,ln99827,ln99641,ln99642,btln007390,btln007388,btln003020,ln99235,ln99236,btln001256,btln001257,ln99712,
ln98430,ln98431,btln000400,btln000401
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
