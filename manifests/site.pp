node default {

# TELUS base profile to be included for all Linux and Windows machines
  include profile::pr_base

}

# lint:ignore:unquoted_node_name lint:ignore:140chars lint:ignore:puppet_url_without_modules




# 20191209 - Puppet 6 agent upgrade - Linux mix of QIDC NP, LIDC NP, Toll8 NP - CRQ71596

node btln007443,btln007442,btln007441,btln007440,btln007439,btln007438,btln007437,btln007436,btln007435,btln007417,btln007416,
btln007415,btln007414,btln007413,btln007412,btln007411,btln007410,btln007408,btln007407,btln007406,btln007405,btln007404,btln007403,
btln007402,btln007401,btln007396,btln007395,btln007394,btln007393,btln007392,btln007391,btln007390,btln007389,btln007388,btln007387,
btln007386,btln007379,btln007378,btln007377,btln007376,btln007375,btln007374,btln007373,btln007372,btln007308,btln007307,btln007306,
btln007305,btln007270,btln007220,btln007186,btln007185,btln007184,btln007181,btln007157,btln007156,btln007155,btln007154,btln007153,
btln007130,btln007129,btln007128,btln007112,btln007111,btln007104,btln007103,btln007102,btln007101,btln007100,btln007099,btln007098,
btln007097,btln007096,btln007085,btln007076,btln007075,btln007074,btln007073,btln007072,btln007071,btln007053,btln007052,btln007051,
btln007050,btln007049,btln007048,btln007043,btln007042,btln007032,btln007031,btln003021,btln003020,btln003019,btln003018,btln003002,
btln003001,btln002985,btln002976,btln002975,btln002974,btln002918,btln002914,btln002913,btln002901,btln002839,btln002817,btln002708,
btln002707,btln002706,btln002705,btln002704,btln002703,btln002701,btln002695,btln002694,btln002693,btln002692,btln002691,btln002690,
btln002689,btln002669,btln002667,btln002666,btln002665,btln002664,btln002663,btln002662,btln002636,btln002635,btln002634,btln002633,
btln002632,btln002631,btln002630,btln002629,btln002616,btln002615,btln002592,btln002591,btln002590,btln002589,btln002588,btln002587,
btln002586,btln002585,btln002584,btln002583,btln002582,btln002581,btln002580,btln002579,btln002578,btln002577,btln002561,btln002559,
btln002552,btln002551,btln002550,btln002549,btln002548,btln002539,btln002538,btln002537,btln002536,btln002523,btln002519,btln002518,
btln002517,btln002516,btln002489,btln002472,btln002471,btln002470,btln002468,btln002446,btln002445,btln002444,btln002443,btln002442,
btln002441,btln002440,btln002439,btln002434,btln002433,btln002432,btln002429,btln002428,btln002427,btln002426,btln002421,btln002420,
btln002419,btln002418,btln002417,btln002416,btln002415,btln002367,btln002363,btln002362,btln002353,
ln99795,ln99794,ln99793,ln99792,ln99791,ln99790,ln99789,ln99788,ln99787,ln99786,ln99785,ln99784,ln99783,ln99782,ln99781,ln99780,
ln99779,ln99778,ln99777,ln99776,ln99775,ln99774,ln99773,ln99772,ln99771,ln99770,ln99769,ln99768,ln99754,ln99753,ln99752,ln99751,ln99750,
ln99749,ln99748,ln99747,ln99746,ln99745,ln99744,ln99743,ln99742,ln99741,ln99740,ln99739,ln99731,ln99730,ln99722,ln99721,ln99720,ln99719,
ln99718,ln99717,ln99716,ln99715,ln99714,ln99713,ln99712,ln99711,ln99710,ln99709,ln99708,ln99707,ln99706,ln99705,ln99704,ln99703,ln99702,
ln99701,ln99697,ln99696,ln99695,ln99694,ln99693,ln99692,ln99691,ln99690,ln99689,ln99688,ln99687,ln99686,ln99685,ln99684,ln99683,ln99682,
ln99681,ln99680,ln99679,ln99678,ln99677,ln99676,ln99675,ln99674,ln99673,ln99672,ln99671,ln99670,ln99669,ln99668,ln99667,ln99666,ln99665,
ln99664,ln99663,ln99662,ln99649,ln99648,ln99647,ln99646,ln99645,ln99644,ln99643,ln99642,ln99641,ln99640,ln99639,ln99638,ln99637,ln99636,
ln99635,ln99634,ln99633,ln99632,ln99631,ln99630,ln99629,ln99628,ln99627,ln99624,ln99623,ln99622,ln99621,ln99619,ln99618,ln99617,ln99616,
ln99615,ln99614,ln99613,ln99609,ln99608,ln99607,ln99606,ln99605,ln99604,ln99603,ln99602,ln99587,ln99586,ln99585,ln99584,ln99583,ln99582,
ln99581,ln99580,ln99579,ln99578,ln99563,ln99562,ln99561,ln99560,ln99559,ln99533,ln99532,ln99531,ln99530,ln99529,ln99528,ln99527,ln99526,
ln99525,ln99524,ln99521,ln99520,ln99519,ln99518,ln99517,ln99516,ln99515,ln99514,ln99512,ln99511,ln99436,ln99435,ln99433,ln99432,ln99394,
ln99389,ln99388,ln99387,ln99386,ln99385,ln99378,ln99377,ln99376,ln99375,ln99374,ln99373,ln99372,ln99371,ln99370,
ln98007,ln98022,ln98057,ln98058,ln98059,ln98070,ln98071,ln98072,ln98073,ln98074,ln98075,ln98077,ln98080,ln98081,ln98082,ln98087,
ln98088,ln98089,ln98136,ln98137,ln98161,ln98163,ln98178,ln98202,ln98203,ln98204,ln98420,ln98422,ln98424,ln98434,ln98457,ln98458,ln98459,
ln98484,ln98486,ln98489,ln98534,ln98535,ln98540,ln98542,ln98587,ln98615,ln98625,ln98750,ln98751,ln98752,ln98753,ln98754,ln98755,ln98756,
ln98757,ln98759,ln98789,ln98790,ln98808,ln98881,ln98887,ln98912,ln98967,ln98968,ln98973,ln98974,ln98996,ln98998,ln99000,ln99001,ln99002,
ln99023,ln99029,ln99038,ln99085,ln99116,ln99122,ln99123,ln99125,ln99135,ln99209,ln99215,ln99217,ln99266,ln99272,ln99380,ln99381,ln99382,
ln99383,ln99406,ln99407,ln99506,ln99507,ln99508,ln99510,ln99543,ln99544,ln99545,ln99610,ln99611,ln99612,ln99698,ln99699,ln99724,ln99734,
ln99735,ln99761,ln99762,ln99763,ln99764,ln99765,ln99766,ln99767,ln99800,ln99801,ln99804,ln98008,ln98078,ln98200,ln98201,ln98613,ln98614,
ln98616,ln98617,ln98618,ln98749
{
  case $facts['kernel'] {
    'Linux'  : {

      case $facts['os']['release']['major'] {
        '5':  {
                $puppet5_channel = 'puppet5-rhel5-x86_64-locked'
                $puppet6_channel = 'puppet6-rhel5-x86_64-locked'
              }
        '6':  {
                $puppet5_channel = 'puppet5-rhel6-x86_64-locked'
                $puppet6_channel = 'puppet6-rhel6-x86_64-locked'
              }
        '7':  {
                $puppet5_channel = 'puppet5-rhel7-x86_64-locked'
                $puppet6_channel = 'puppet6-rhel7-x86_64-locked'
              }
        default: { fail('Puppet is only supported on Oracle Linux 5,6, and 7') }
      }

      # Add Puppet 6 channel
      telus_lib::yum_channel { $puppet6_channel:
        ensure => present,
      }

      # Remove Puppet 5 channel
      telus_lib::yum_channel { $puppet5_channel:
        ensure => absent,
      }


      class {'::puppet_agent':
        collection      => 'puppet6',
        package_version => '6.11.1',
        service_names   => ['puppet'],
        manage_repo     => false,
        notify          => Exec['set lin no_proxy','set lin resubmit_facts'],
        require         => Telus_lib::Yum_channel[$puppet6_channel],
      }

      exec { 'set lin no_proxy':
        command => "puppet config set no_proxy 'localhost, 127.0.0.1, ${servername}'",
        path    => '/opt/puppetlabs/puppet/bin:/bin:/usr/bin:/usr/sbin:/bin',
        unless  => "puppet config print no_proxy | grep -q ${servername} > /dev/null",
      }

      exec { 'set lin resubmit_facts':
        command => 'puppet config set resubmit_facts true',
        path    => '/opt/puppetlabs/puppet/bin:/bin:/usr/bin:/usr/sbin:/bin',
        unless  => 'puppet config print resubmit_facts | grep -q true > /dev/null',
      }

    }
    'windows': {

      # Run it only on Windows 2012 R2 and newer

      # if (Float.new($facts['kernelmajversion'])) >= 6.3 {

      #   file { 'win install file':
      #     ensure => present,
      #     path   => "${env_temp_variable}\\puppet-agent-6.11.1-x64.msi",
      #     source => 'puppet:///software/windows/puppet-agent-6.11.1-x64.msi',
      #   }

      #   class {'::puppet_agent':
      #     absolute_source       => "${env_temp_variable}\\puppet-agent-6.11.1-x64.msi",
      #     collection            => 'puppet6',
      #     package_version       => '6.11.1',
      #     service_names         => ['puppet'],
      #     manage_repo           => false,
      #     msi_move_locked_files => true,
      #     require               => File['win install file'],
      #     notify                => Exec['set win no_proxy','set win resubmit_facts'],
      #   }

      #   exec { 'set win no_proxy':
      #     command => "cmd.exe /c  puppet config set no_proxy 'localhost, 127.0.0.1, ${servername}'",
      #     path    => 'C:\Program Files\Puppet Labs\Puppet\bin;C:\Windows\system32',
      #     unless  => "cmd.exe /c puppet config print no_proxy | findstr.exe ${servername} > nul",
      #   }

      #   exec { 'set win resubmit_facts':
      #     command => 'cmd.exe /c  puppet config set resubmit_facts true',
      #     path    => 'C:\Program Files\Puppet Labs\Puppet\bin;C:\Windows\system32',
      #     unless  => 'cmd.exe /c puppet config print resubmit_facts | findstr.exe true > nul',
      #   }

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

# 2019/11/17 CRQ71464 - Patrol upgrade group 1007
# node tslp000150,tslp000251,tslp000274,tslp000275,tslp000288,tslp000289,
# tslp000290,tslp000291,tslp000298,tslp000299,tslp000355,tslp000356,
# tslp000357,tslp000358,tslp000362,tslp000363,tslp000373,tslp000374,
# tslp000377,tslp000407,tslp000408,tslp000413,tslp000414,tslp000415,
# tslp000416,tslp000419,tslp000420,tslp000421,tslp000431,tslp000521,
# tslp000522,tslp000523,tslp000524,tslp000525,tslp000526,tslp000528,
# tslp000529,tslp000530,tslp000531,tslp000532,tslp000533,tslp000563,
# tslp000564,tslp000565,tslp000566,tslp000571,tslp000572,tslp000573,
# tslp000574,tslp000652,tslp000653,tslp000654,tslp000655,tslp000656,
# tslp000657,tslp000658,tslp000659,tslp000667,tslp000668,tslp000669,
# tslp000670,tslp000671,tslp000672,tslp000673,tslp000674,tslp000694,
# tslp000695,tslp000899,btlp002194,btlp002195,btlp002196,btlp002206,
# btlp002207,btlp002208,btlp002209,btlp002210,btlp002211,btlp002223,
# btlp002224,btlp002225,btlp002226,btlp002227,btlp002228,btlp002229,
# btlp002230,btlp002231,btlp002232,btlp002265,btlp002266,btlp002269,
# btlp002270,btlp002271,btlp002272,btlp002273,btlp002274,btlp002275,
# btlp002307,btlp002308,btlp002309,btlp002310,btlp002311,btlp002312,
# btlp002313,btlp002314,btlp002315,btlp002316,btlp002317,btlp002400,
# btlp002401,btlp002440,btlp002441,btlp002442,btlp002443,btlp002452,
# btlp002453,btlp002547,btlp002548,btlp002608,btlp002615,btlp002616,
# btlp003107,btlp003108,btlp003113,btlp003114,btlp003117,btlp003118,
# btlp003127,btlp003128,btlp006031,btlp006032,btlp006033,btlp006034,
# btlp006035,btlp006036,btlp006069,btlp006104,btlp006105,btlp006106,
# btlp006107,btlp006108,btlp006109,btlp006112,btlp006139,btlp006140,
# btlp006141,btlp006142,btlp006143,btlp006144,btlp006145,btlp006246,
# btlp006247,btlp006248,btlp006249,btlp006250,btlp006251,btlp006252,
# btlp006253,btlp006497,tslp000009,tslp000011,tslp000013,tslp000020,
# tslp000114,tslp000212,tslp000213,tslp000235,tslp000236,tslp000237,
# tslp000238,tslp000239,tslp000240,tslp000247,tslp000250,tslp000262,
# tslp000263,tslp000264,tslp000265,tslp000266,tslp000267,tslp000268,
# tslp000269,tslp000270,tslp000271,tslp000272,tslp000273,tslp000286,
# tslp000287,tslp000300,tslp000301,tslp000364,tslp000365,tslp000366,
# tslp000367,tslp000368,tslp000369,tslp000370,tslp000375,tslp000376,
# tslp000378,tslp000409,tslp000410,tslp000411,tslp000412,tslp000430,
# tslp000507,tslp000508,tslp000509,tslp000510,tslp000511,tslp000512,
# tslp000513,tslp000514,tslp000515,tslp000516,tslp000517,tslp000518,
# tslp000519,tslp000534,tslp000535,tslp000536,tslp000537,tslp000538,
# tslp000539,tslp000540,tslp000541,tslp000542,tslp000543,tslp000544,
# tslp000545,tslp000546,tslp000615,tslp000616,tslp000638,tslp000696,
# tslp000697
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
