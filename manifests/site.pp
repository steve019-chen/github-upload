node default {

  # Puppet agent custom settings
  class { 'puppet_agent_config::puppet_conf': }

  # LVM module used for creating non-rootvg filesystems
  class { 'lvm': }

# TELUS Lib module used for custom facts and functions
  include telus_lib

}

# lint:ignore:unquoted_node_name lint:ignore:140chars

<<<<<<< HEAD
# 20190527  - Patrol ROFS module Non-prod
=======
# 20190524  - Patrol ROFS module Non-prod
>>>>>>> f4eeaf5ee14a122562c1ec1df091cb4da086cf6d
node btln002861,btln002751,btln001274,btln002065,btln007397,btln001893,btln001772,btln002746,btln003029,btln003056,btln002098,btln001840,btln001439,btln003055,btln001830,btln007295,btln003039,btln002719,btln002800,btln002344,btln003060,btln000725,btln002369,btln001699,btln007001,btln007594,btln002075,btln002994,btln002717,btln007094,btln002821,btln000542,btln007328,btln000549,btln002853,btln002392,btln002371,btln002073,btln002346,btln002742,btln002457,btln002748,btln001260,btln001780,btln000399,btln002405,btln002438,btln001683,btln002316,btln007608,btln002897,btln000730,btln002965,btln002566,btln007313,btln002076,btln002785,btln002793,btln001973,btln007004,btln002565,btln002531,btln002449,btln002094,btln007610,btln000726,btln002228,btln002820,btln002010,btln007229,btln002069,btln000558,btln002342,btln001901,btln002096,btln001769,btln002619,btln003030,btln001261,btln002399,ln99142,ln99646,ln99609,ln99792,ln99787,ln98985,ln99346,ln98095,ln98323,ln98802,ln99435,ln98141,ln98552,ln99014,ln98281,ln98866,ln98125,ln98845,ln98779,ln99731,ln99701,ln98516,ln98937,ln99520,ln99171,ln99114,ln99514,ln99702,ln99643,ln98816,ln99603,ln99160,ln99622,ln99697,ln97059,ln98513,ln98927,ln99855,ln99519,ln99283,ln99640,ln98827,ln99628,ln97058,ln98621,ln99707,ln99198,ln99706,ln99639,ln99644,ln99866,ln98939,ln99836,ln99244,ln99839,ln98785,ln99638,ln99373,ln98562,ln99821,ln98934,ln98891,ln98612,ln98608,ln99780,ln98594,ln99112,ln99753,ln99614,ln98149,ln98505,ln99768,ln99583,ln98593,ln98560,ln98143,ln99869,btln001050,btln001135,btln000291,btln007508,btln002271,btln002081,btln000373,btln007579,btln000334,btln002178,btln001070,btln002338,btln001597,btln001544,btln002418,btln001974,btln007032,btln007493,btln000296,btln001655,btln007372,btln000671,btln007532,btln007130,btln001981,btln001691,btln007552,btln007268,btln007075,btln007660,btln000940,btln002470,btln007393,btln001087,btln002578,btln007586,btln007306,btln001810,btln000314,btln007438,btln007659,btln007096,btln002116,btln007133,btln007404,btln000283,btln002974,btln001287,btln001386,btln000318,btln000368,btln001595,btln000677,btln007479,btln001198,btln001334,btln001048,btln007711,btln007567,btln000929,btln001759,btln001352,btln000281,btln002662,btln001527,btln002440,btln007257,btln002037,btln000454,btln001677,btln002319,btln007527,btln002914,btln001305,btln001350,btln002705,btln002352,btln001533,btln000917,btln007373,abapp216,ln98617,ln98480,ln99509,ln98973,ln98490,ln98176,ln98613,ln98484,ln98087,ln98752,ln98751,ln99382,ln98091,ln98756,ln98614,ln98007,ln98481,ln99381,ln98616,ln99610,ln99135,ln98488,ln98757,ln98750,ln99122,ln99125,ln98974,ln98058,ln98489,ln98615,ln99612,ln98754
{
  class { 'role::rl_patrol_rofs': }
}


# # 20190523  - Patrol ROFS module Non-prod - First large group
# node btln002741,btln000390,btln002485,btln002860,btln007345,btln000502,btln001894,btln001852,btln000626,btln001441,btln003033,btln002568,btln002854,btln001437,btln001806,btln001766,btln002093,btln002721,btln001736,btln002772,ln99631,ln99674,ln99683,ln99647,ln98818,ln99860,ln99843,ln99849,ln98817,ln99242,ln98764,ln99582,ln99530,ln99280,ln99858,ln99240,ln99394,ln99004,ln98761,ln99191,btln007588,btln001302,btln000465,btln001284,btln002583,btln001193,btln007131,btln001978,btln001318,btln007577,btln002585,btln000320,btln001134,btln000357,btln002040,btln002629,btln007560,btln007578,btln001207,btln001106,ln98892,tqtwas02,pqmgt008,tqawas03,tqtwas01,ln98175,abapp216,ln98535,ln98534,ln99543,ln98753,ln99611,ln98949,ln98759,ln99544,ln99510,ln98429,ln99545,ln98088,ln98749,ln98487,ln98954,ln99266,ln98755
# {
#   class { 'role::rl_patrol_rofs': }
# }

# 20190222 CRQ37712 - Project Diversio
node ln98551,lp97396,lp99440,lp99538,lp97817,lp97397,lp97728
{
  include role::rl_diversio
}

# # 2019-05-23 CRQ49762 - Patrol upgrade group 9
# node ln98257,ln98300,ln98301,ln98302,ln98310,ln98311,ln98423,ln98424,ln98425,
# ln98432,ln98433,ln98444,ln98445,ln98448,ln98449,ln98450,ln98451,
# ln98456,ln98496,ln98497,ln98505,ln98509,ln98510,ln98511,ln98512,ln98517,
# ln98518,ln98519,ln98520,ln98546,ln98558,ln98570,ln98571,ln98573,ln98574,
# ln98577,ln98581,ln98582,ln98583,ln98584,ln98585,ln98586,ln98587,ln98588,
# ln98590,ln98591
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
