node default {

# TELUS base profile to be included for all Linux and Windows machines
  include profile::pr_base

}




# lint:ignore:unquoted_node_name lint:ignore:140chars

# 20190528  - Patrol ROFS module Non-prod - change4 - CRQ50447
#node btln007243,btln007331,btln001963,btln000435,btln001839,btln007058,btln003025,btln002968,btln001790,btln002347,btln007003,btln000395,btln002177,btln001296,btln007609,btln000420,btln000428,btln007423,btln002046,btln007299,btln002054,btln001953,btln000433,btln001684,btln002011,btln002818,btln007607,btln002992,btln000429,btln001293,btln002394,btln007315,btln007291,btln002920,btln000438,btln007066,btln002122,btln002713,btln002023,btln002057,btln002390,btln002532,btln001576,btln002622,btln007237,btln002967,btln002092,btln002702,btln002090,btln002614,btln000623,btln001832,btln000590,btln002564,btln000414,btln003067,btln002529,btln001992,btln000544,btln002865,btln002478,btln007475,btln000403,btln002877,btln002724,tsln000108,btln007244,btln001821,btln007421,btln001854,btln001855,btln002797,btln000398,btln000721,btln001370,btln002377,btln002172,btln002385,btln000422,btln003047,btln003061,btln002176,btln002295,btln001283,btln001970,btln002064,btln007606,btln003000,btln007325,btln001611,btln001829,btln007140,btln002387,btln001276,btln002603,btln001246,btln002787,btln002711,btln003042,btln001958,btln001262,btln007329,btln007476,btln001698,btln000426,btln001794,btln007597,btln003011,btln002307,btln002382,btln001795,btln001264,btln001796,btln000695,btln003041,btln001443,tsln000104,btln007347,btln000412,btln000732,btln002858,btln001784,btln002060,btln002714,btln007138,btln002381,btln002015,btln002808,btln002480,btln002388,btln003059,btln002454,btln002786,btln002716,btln001419,btln002095,btln000547,btln002455,btln000589,btln003007,btln002004,btln001774,btln002750,btln002752,btln002862,btln002391,btln007142,btln001272,btln003043,btln001969,btln002484,btln002712,btln001415,btln007477,btln002720,btln002613,btln002473,btln002997,btln002313,btln007148,btln007344,btln002487,btln007245,btln007598,btln002863,btln002048,btln002688,btln001803,btln001836,btln007152,btln002105,btln001247,btln007320,btln000625,btln001610,btln001833,btln007599,btln001853,btln001430,btln001242,btln007502,btln002745,btln001792,btln007241,btln002771,btln002482,btln007211,btln000419,btln007327,btln002998,btln000741,btln000737,btln000722,btln007225,btln007095,btln002091,btln000431,btln007332,btln001844,btln007236,btln000519,btln002810,btln007396,btln007259,btln001584,btln007123,btln001596,btln001051,btln007541,btln000693,btln001742,btln001066,btln002690,btln001090,btln001543,btln001336,btln001180,btln001695,btln000343,btln002179,btln000905,btln007474,btln007043,btln007587,btln001351,btln001456,btln001062,btln002632,btln002439,btln001068,btln007713,btln007583,btln000928,btln007536,btln001980,btln001162,btln001085,btln007394,btln007472,btln000471,btln000963,btln001639,btln002708,btln002636,btln001651,btln001227,btln002985,btln002033,btln002322,btln001723,btln000274,btln000353,btln000462,btln001989,btln000676,btln007127,btln007459,btln001704,btln007443,btln002691,btln007561,btln007544,btln007485,btln000328,btln002417,btln001763,btln000306,btln001565,btln001652,btln001181,btln002551,btln007269,btln001321,btln001955,btln007414,btln001819,btln001289,btln007662,btln007535,btln001658,btln007077,btln000279,btln007391,btln002703,btln002472,btln002118,btln001347,btln000313,btln007124,btln002304,btln002323,btln001178,btln001646,btln000919,btln001988,btln001586,btln001203,btln001529,btln000967,btln001199,btln002339,btln001067,btln001656,btln002080,btln007585,btln001512
#{
#  class { 'role::rl_patrol_rofs': }
#}

node btln999924
{
  include role::rl_initd
}

# 20190222 CRQ37712 - Project Diversio
node ln98551,lp97396,lp99440,lp99538,lp97817,lp97397,lp97728
{
  include role::rl_diversio
}

# 2019/11/11 CRQ71015 - Patrol upgrade group 1003
node btlp000417,btlp000418,btlp000419,btlp000425,btlp000453,btlp000454,
btlp000495,btlp000496,btlp000497,btlp000498,btlp000499,btlp000720,
btlp000734,btlp000735,btlp000749,btlp000750,btlp000752,btlp000753,
btlp000754,btlp000755,btlp000756,btlp000757,btlp000758,btlp000759,
btlp000763,btlp000810,btlp000811,btlp000815,btlp000820,btlp000821,
btlp000822,btlp000823,btlp000825,btlp000828,btlp000860,btlp000861,
btlp000862,btlp000863,btlp000869,btlp000870,btlp000871,btlp000872,
btlp000873,btlp000886,btlp000887,btlp000888,btlp000889,btlp000890,
btlp000941,btlp000942,btlp000943,btlp000944,btlp000945,btlp000954,
btlp000980,btlp000981,btlp001006,btlp001007,btlp001008,btlp001009,
btlp001010,btlp001014,btlp001015,btlp001016,btlp001017,btlp001018,
btlp001028,btlp001029,btlp001058,btlp001059,btlp001060,btlp001061,
btlp001066,btlp001071,btlp001072,btlp001082,btlp001083,btlp001155,
btlp001156,btlp001157,btlp001158,btlp001196,btlp001197,btlp001198,
btlp001199,btlp001200,btlp001201,btlp001202,btlp001203,btlp001207,
btlp001208,btlp001246,btlp001247,btlp001248,btlp001249,btlp001250,
btlp001251,btlp000152,btlp000153,btlp000154,btlp000162,btlp000163,
btlp000164,btlp000165,btlp000166,btlp000167,btlp000168,btlp000169,
btlp000170,btlp000171,btlp000174,btlp000175,btlp000176,btlp000177,
btlp000178,btlp000179,btlp000180,btlp000181,btlp000182,btlp000183,
btlp000184,btlp000185,btlp000186,btlp000187,btlp000188,btlp000189,
btlp000190,btlp000192,btlp000202,btlp000203,btlp000204,btlp000205,
btlp000206,btlp000207,btlp000208,btlp000209,btlp000210,btlp000215,
btlp000216,btlp000217,btlp000218,btlp000224,btlp000225,btlp000228,
btlp000246,btlp000247,btlp000249,btlp000250,btlp000251,btlp000267,
btlp000268,btlp000269,btlp000270,btlp000447,btlp000448,btlp000501,
btlp000502,btlp000503,btlp000506,btlp000507,btlp000524,btlp000525,
btlp000547,btlp000548,btlp000549,btlp000550,btlp000551,btlp000552,
btlp000553,btlp000554,btlp000557,btlp000558,btlp000559,btlp000560,
btlp000561,btlp000562,btlp000567,btlp000571,btlp000572,btlp000573,
btlp000574,btlp000575,btlp000576,btlp000577,btlp000578,btlp000579,
btlp000580,btlp000581,btlp000582,btlp000584,btlp000585,btlp000595,
btlp000596,btlp000597,btlp000598,btlp000617,btlp000618,lp97428,lp97429,
lp97430,lp97441,lp97442,lp97443,lp97444,lp97445,lp97446,lp97447,lp97448,
lp97449,lp97450,lp97451,lp97452,lp97453,lp97505,lp97605,lp97606,lp97610,
lp97640,lp97641,lp97684,lp97797,lp97807,lp97808,lp97809,lp97810,lp97830,
lp97831,lp97834,lp97871,lp97872,lp97873,lp97874,lp97899,lp97900,lp97906,
lp97907,lp97908,lp97909,lp97914,lp97919,lp97922,lp97923,lp97924,lp97925,
lp97926,lp97939,lp97947,lp97948,lp97961,lp98032,lp98045,lp98046,lp98047,
lp98051,lp98052,lp98053,lp98054,lp98055,lp98087,lp98088,lp98089,lp98101,
lp98134,lp98151,lp98160,lp98161,lp98162,lp98163,lp98171,lp98172,lp98173,
lp98188,lp98900,lp98901,lp98902,lp99048,lp99052,lp99053,lp99061,lp99062,
lp99063,lp99064,lp99065,lp99272,lp99311,lp99314,lp99317,lp99318,lp97413,
lp97414,lp97415,lp97416,lp97417,lp97418,lp97421,lp97500,lp97501,lp97503,
lp97508,lp97509,lp97514,lp97515,lp97516,lp97517,lp97526,lp97527,lp97529,
lp97530,lp97532,lp97533,lp97540,lp97541,lp97542,lp97543,lp97544,lp97545,
lp97546,lp97547,lp97548,lp97549,lp97550,lp97551,lp97552,lp97566,lp97581,
lp97611,lp97612,lp97614,lp97625,lp97628,lp97629,lp97632,lp97635,lp97697,
lp97709,lp97710,lp97713,lp97716,lp97717,lp97718,lp97719,lp97720,lp97721,
lp97722,lp97723,lp97724,lp97725,lp97726,lp97727,lp97729,lp97730,lp97731,
lp97732,lp97739,lp97740,lp97746,lp97747,lp97751,lp97754,lp97755,lp97756,
lp97757,lp97758,lp97768,lp97769,lp97771,lp97772,lp97781,lp97792,lp97793,
lp97800,lp97801,lp97802,lp97803,lp97804,lp97805,lp97806,lp97811,lp97812,
lp97813,lp97815,lp97816,lp97829,btlp000346,btlp000347,btlp000348,
btlp000349,btlp000350,btlp000351,btlp000352,btlp000353,btlp000354,
btlp000388,btlp000402,btlp000403
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
