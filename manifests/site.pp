node default {

# TELUS base profile to be included for all Linux and Windows machines
  include profile::pr_base

}




# lint:ignore:unquoted_node_name lint:ignore:140chars

node btln001248, btln001249
{
  include role::rl_jira
}


node btln007207
{
  case $facts['kernel'] {
    'Linux'  : {

        class {'::puppet_agent':
        collection      => 'puppet6',
        package_version => '6.10.1',
        service_names   => ['puppet'],
        manage_repo     => false,
        notify          => Exec['set lin no_proxy'],
      }

      exec { 'set lin no_proxy':
        command => "puppet config set no_proxy 'localhost, 127.0.0.1, ${servername}'",
        path    => '/opt/puppetlabs/puppet/bin:/bin:/usr/bin:/usr/sbin:/bin',
        unless  => "puppet config print no_proxy | grep -q ${servername} > /dev/null",
      }
    }
    'windows': {

      #   class {'::puppet_agent':
      #   collection      => 'puppet6',
      #   package_version => '6.10.1',
      #   service_names   => ['puppet'],
      #   manage_repo     => false,
      #   notify          => Exec['set win no_proxy'],
      # }

      # exec { 'set win no_proxy':
      #   command => "cmd.exe /c  puppet config set no_proxy 'localhost, 127.0.0.1, ${servername}'",
      #   path    => 'C:\Program Files\Puppet Labs\Puppet\bin;C:\Windows\system32',
      #   unless  => "cmd.exe /c puppet config print no_proxy | findstr.exe ${servername} > nul",
      # }
    }
    default: { }
  }

}

# 20190528  - Patrol ROFS module Non-prod - change4 - CRQ50447
#node btln007243,btln007331,btln001963,btln000435,btln001839,btln007058,btln003025,btln002968,btln001790,btln002347,btln007003,btln000395,btln002177,btln001296,btln007609,btln000420,btln000428,btln007423,btln002046,btln007299,btln002054,btln001953,btln000433,btln001684,btln002011,btln002818,btln007607,btln002992,btln000429,btln001293,btln002394,btln007315,btln007291,btln002920,btln000438,btln007066,btln002122,btln002713,btln002023,btln002057,btln002390,btln002532,btln001576,btln002622,btln007237,btln002967,btln002092,btln002702,btln002090,btln002614,btln000623,btln001832,btln000590,btln002564,btln000414,btln003067,btln002529,btln001992,btln000544,btln002865,btln002478,btln007475,btln000403,btln002877,btln002724,tsln000108,btln007244,btln001821,btln007421,btln001854,btln001855,btln002797,btln000398,btln000721,btln001370,btln002377,btln002172,btln002385,btln000422,btln003047,btln003061,btln002176,btln002295,btln001283,btln001970,btln002064,btln007606,btln003000,btln007325,btln001611,btln001829,btln007140,btln002387,btln001276,btln002603,btln001246,btln002787,btln002711,btln003042,btln001958,btln001262,btln007329,btln007476,btln001698,btln000426,btln001794,btln007597,btln003011,btln002307,btln002382,btln001795,btln001264,btln001796,btln000695,btln003041,btln001443,tsln000104,btln007347,btln000412,btln000732,btln002858,btln001784,btln002060,btln002714,btln007138,btln002381,btln002015,btln002808,btln002480,btln002388,btln003059,btln002454,btln002786,btln002716,btln001419,btln002095,btln000547,btln002455,btln000589,btln003007,btln002004,btln001774,btln002750,btln002752,btln002862,btln002391,btln007142,btln001272,btln003043,btln001969,btln002484,btln002712,btln001415,btln007477,btln002720,btln002613,btln002473,btln002997,btln002313,btln007148,btln007344,btln002487,btln007245,btln007598,btln002863,btln002048,btln002688,btln001803,btln001836,btln007152,btln002105,btln001247,btln007320,btln000625,btln001610,btln001833,btln007599,btln001853,btln001430,btln001242,btln007502,btln002745,btln001792,btln007241,btln002771,btln002482,btln007211,btln000419,btln007327,btln002998,btln000741,btln000737,btln000722,btln007225,btln007095,btln002091,btln000431,btln007332,btln001844,btln007236,btln000519,btln002810,btln007396,btln007259,btln001584,btln007123,btln001596,btln001051,btln007541,btln000693,btln001742,btln001066,btln002690,btln001090,btln001543,btln001336,btln001180,btln001695,btln000343,btln002179,btln000905,btln007474,btln007043,btln007587,btln001351,btln001456,btln001062,btln002632,btln002439,btln001068,btln007713,btln007583,btln000928,btln007536,btln001980,btln001162,btln001085,btln007394,btln007472,btln000471,btln000963,btln001639,btln002708,btln002636,btln001651,btln001227,btln002985,btln002033,btln002322,btln001723,btln000274,btln000353,btln000462,btln001989,btln000676,btln007127,btln007459,btln001704,btln007443,btln002691,btln007561,btln007544,btln007485,btln000328,btln002417,btln001763,btln000306,btln001565,btln001652,btln001181,btln002551,btln007269,btln001321,btln001955,btln007414,btln001819,btln001289,btln007662,btln007535,btln001658,btln007077,btln000279,btln007391,btln002703,btln002472,btln002118,btln001347,btln000313,btln007124,btln002304,btln002323,btln001178,btln001646,btln000919,btln001988,btln001586,btln001203,btln001529,btln000967,btln001199,btln002339,btln001067,btln001656,btln002080,btln007585,btln001512
#{
#  class { 'role::rl_patrol_rofs': }
#}

# 20190222 CRQ37712 - Project Diversio
node ln98551,lp97396,lp99440,lp99538,lp97817,lp97397,lp97728
{
  include role::rl_diversio
}

# 2019/07/17 CRQ56222 - Patrol upgrade group 18
# node btln007175,btln007223,btln007224,btln007225,btln007226,btln007227,
# btln007228,btln007229,btln007230,btln007231,btln007232,btln007233,
# btln007234,btln007235,btln007236,btln007237,btln007238,btln007239,
# btln007240,btln007241,btln007242,btln007243,btln007244,btln007245,
# btln007246,btln007247,btln007248,btln007249,btln007250,btln007291,
# btln007292,btln007293,btln007294,btln007295,btln007296,btln007297,
# btln007298,btln007299,btln007300,btln007301,btln007311,btln007312,
# btln007313,btln007314,btln007315,btln007316,btln007317,btln007318,
# btln007319,btln007320,btln007321,btln007322,btln007323,btln007324,
# btln007325,btln007326,btln007327,btln007328,btln007329,btln007330,
# btln007331,btln007332,btln007333,btln007334,btln007335,btln007336,
# btln007337,btln007338,btln007339,btln007340,btln007341,btln007342,
# btln007343,btln007344,btln007345,btln007346,btln007347,btln007348,
# btln007349,btln007357,btln007358,btln007359,btln007360,btln007361,
# btln007381,btln007382,btln007383,btln007397,btln007398,btln007409,
# btln007421,btln007422,btln007423,btln007430,btln007431,btln007432,
# btln007433,btln007434,btln007444,btln007449,btln007475,btln007476,
# btln007477,btln007478,btln007486,btln007501,btln007502,btln007503,
# btln007504,btln007506,btln007512,btln007513,btln007540,btln007542,
# btln007589,btln007590,btln007591,btln007592,btln007593,btln007594,
# btln007595,btln007596,btln007597,btln007598,btln007599,btln007600,
# btln007605,btln007606,btln007607,btln007608,btln007609,btln007610,
# btln007611,btln007657,btln007658,btln007663,btln007664,tsln000104,
# btln007485,btln007493,btln007494,btln007495,btln007496,btln007497,
# btln007498,btln007499,btln007507,btln007508,btln007511,btln007520,
# btln007521,btln007522,btln007525,btln007526,btln007527,btln007532,
# btln007533,btln007534,btln007535,btln007536,btln007537,btln007538,
# btln007539,btln007541,btln007543,btln007544,btln007545,btln007550,
# btln007551,btln007552,btln007553,btln007556,btln007557,btln007558,
# btln007559,btln007560,btln007561,btln007562,btln007563,btln007565,
# btln007566,btln007567,btln007574,btln007575,btln007576,btln007577,
# btln007578,btln007579,btln007580,btln007581,btln007582,btln007583,
# btln007584,btln007585,btln007586,btln007587,btln007588,btln007602,
# btln007603,btln007604,btln007659,btln007660,btln007661,btln007662,
# btln007711,btln007712,btln007713,btln007714,btln007715,tsln000030,ln98490,
# btln002895,ln98760,ln98810,ln98811
# {
#   class { 'role::rl_patrol_upgrade': }
# }

# 20190425 CRQ45615 - Project ASAPNOC

# node btln007808, btln007809, btln007769, btln007770, btlp007033, btlp007034, btlp007037, btlp007038
node btln007808, btln007809, btlp007033, btlp007034
{
  include role::rl_asapnoc
}

# BCG Shannon project 

node btlp007087, btlp007088,btlp007089,btlp007090,btlp007091,btlp007092,btlp007093,btlp007094,btlp007095,btlp007096,
btlp007097,btlp007098,btlp007099,btlp007100,btlp007101,btlp007102,btlp007103,btlp007104,btlp007105,btlp007106,
btlp007107,btlp007108,btlp007109,btlp007110,btlp007111,btlp007112,btlp007113,btlp007114,btlp007115,btlp007116 {
class { 'role::rl_bcg_shannon': }
}

# Dynatrace agent Staging
node ln99029,ln99028,ln99084,ln99085,ln98937,ln99622,ln99618,ln99777,ln98939,ln98940,ln99617,
ln99619,ln99152,ln99035,ln99036,ln99833,ln99779,ln99835,ln99834,ln99246,ln99247,ln99582,ln99583,
ln99584,ln99839,ln99840,ln99841,btln000075,btln002027,btln002028,btln002039,btln007102,
btln007103,btln007263,btln007264,btln007265,btln000076,btln001589,btln001590,btln002040,
btln007403,btln007404,btln001031,btln001032,btln001033,btln000013,btln000014,btln008025,btln008022,btln008023,btln008071,btln008020,
btln008021,btln008018,btln008019,btln008067,ln99151,btln001242,btln001243,btln007855,btln007856

{
class { 'role::rl_dynatrace_st': }
}

node btln007523,btln007524,btln007717,btln007718,ln99773,ln99826, btln001649,btln001650,btln002025,btln002026,btln007399,btln007401,btln007402,ln99694,ln99695,ln99696,ln99734,ln99735,ln99778,
ln99784,ln99785,ln99788,btln000045,btln000046,btln000047,btln000048,
btln001604,btln001605,btln002031,btln002032,btln002042,btln007253,btln007254,btln007528,btln007529,btln007568,
btln007569,btln007570,ln98312,ln98319,ln98320,ln98321,ln98556,ln98557,ln99227,ln99228,ln99229,ln99230,
ln99254,ln99665,ln99666,ln99667,ln99770,ln99771,ln99822,ln99823,ln99824,ln99147,ln99148,btln000011,
btln000012,ln99161,ln99162,ln98279,ln98280,ln99231,ln99232,ln99233,ln99234,ln98316,btln007386, btln007387,
btlp006328,btlp006329,btlp006330,btlp006331,btlp006332,btlp006333,btlp006334,btlp006335,btln000406,btln000409,
btln000408,ln98434,ln99217,ln98435,ln99216,ln98438,btln001602,btln001603,btln002029,btln002030,btln002041,
btln007255,btln007256,btln007530,btln007531,btln007571,btln007572,btln007573,ln98315,ln98317,ln98318,ln98559,
ln99663,ln99664,ln99772,ln99825,ln99827,ln99641,ln99642,btln007390,btln007388,btln003020,ln99235,ln99236,btln001256,btln001257,ln99712,
ln98430,ln98431,btln000400,btln000401,ln98142,ln98157
{
class { 'role::rl_dynatrace': }
}

#
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
