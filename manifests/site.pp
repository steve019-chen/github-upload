node default {

# TELUS base profile to be included for all Linux and Windows machines
  include profile::pr_base

}

# lint:ignore:unquoted_node_name lint:ignore:140chars

# 20190528  - Patrol ROFS module Non-prod - change4 - CRQ50447
#node btln007243,btln007331,btln001963,btln000435,btln001839,btln007058,btln003025,btln002968,btln001790,btln002347,btln007003,btln000395,btln002177,btln001296,btln007609,btln000420,btln000428,btln007423,btln002046,btln007299,btln002054,btln001953,btln000433,btln001684,btln002011,btln002818,btln007607,btln002992,btln000429,btln001293,btln002394,btln007315,btln007291,btln002920,btln000438,btln007066,btln002122,btln002713,btln002023,btln002057,btln002390,btln002532,btln001576,btln002622,btln007237,btln002967,btln002092,btln002702,btln002090,btln002614,btln000623,btln001832,btln000590,btln002564,btln000414,btln003067,btln002529,btln001992,btln000544,btln002865,btln002478,btln007475,btln000403,btln002877,btln002724,tsln000108,btln007244,btln001821,btln007421,btln001854,btln001855,btln002797,btln000398,btln000721,btln001370,btln002377,btln002172,btln002385,btln000422,btln003047,btln003061,btln002176,btln002295,btln001283,btln001970,btln002064,btln007606,btln003000,btln007325,btln001611,btln001829,btln007140,btln002387,btln001276,btln002603,btln001246,btln002787,btln002711,btln003042,btln001958,btln001262,btln007329,btln007476,btln001698,btln000426,btln001794,btln007597,btln003011,btln002307,btln002382,btln001795,btln001264,btln001796,btln000695,btln003041,btln001443,tsln000104,btln007347,btln000412,btln000732,btln002858,btln001784,btln002060,btln002714,btln007138,btln002381,btln002015,btln002808,btln002480,btln002388,btln003059,btln002454,btln002786,btln002716,btln001419,btln002095,btln000547,btln002455,btln000589,btln003007,btln002004,btln001774,btln002750,btln002752,btln002862,btln002391,btln007142,btln001272,btln003043,btln001969,btln002484,btln002712,btln001415,btln007477,btln002720,btln002613,btln002473,btln002997,btln002313,btln007148,btln007344,btln002487,btln007245,btln007598,btln002863,btln002048,btln002688,btln001803,btln001836,btln007152,btln002105,btln001247,btln007320,btln000625,btln001610,btln001833,btln007599,btln001853,btln001430,btln001242,btln007502,btln002745,btln001792,btln007241,btln002771,btln002482,btln007211,btln000419,btln007327,btln002998,btln000741,btln000737,btln000722,btln007225,btln007095,btln002091,btln000431,btln007332,btln001844,btln007236,btln000519,btln002810,btln007396,btln007259,btln001584,btln007123,btln001596,btln001051,btln007541,btln000693,btln001742,btln001066,btln002690,btln001090,btln001543,btln001336,btln001180,btln001695,btln000343,btln002179,btln000905,btln007474,btln007043,btln007587,btln001351,btln001456,btln001062,btln002632,btln002439,btln001068,btln007713,btln007583,btln001589,btln000928,btln007536,btln001980,btln001162,btln001085,btln007394,btln007472,btln000471,btln000963,btln001639,btln002708,btln002636,btln001651,btln001227,btln002985,btln002033,btln002322,btln001723,btln000274,btln000353,btln000462,btln001989,btln000676,btln007127,btln007459,btln001704,btln007443,btln002691,btln007561,btln007544,btln007485,btln000328,btln002417,btln001763,btln000306,btln001565,btln001652,btln007403,btln001181,btln002551,btln007269,btln001321,btln001955,btln007414,btln001819,btln001289,btln007662,btln007535,btln001658,btln007077,btln000279,btln007391,btln002703,btln002472,btln002118,btln001347,btln000313,btln007124,btln002304,btln002323,btln001178,btln001646,btln000919,btln001988,btln001586,btln001203,btln001529,btln000967,btln001199,btln002339,btln001067,btln001656,btln002080,btln007585,btln001512
#{
#  class { 'role::rl_patrol_rofs': }
#}

# 20190222 CRQ37712 - Project Diversio
node ln98551,lp97396,lp99440,lp99538,lp97817,lp97397,lp97728
{
  include role::rl_diversio
}

# 2019/07/10 CRQ53787 - Patrol upgrade group 15
node btln001960,btln001961,btln001962,btln001963,btln001964,btln001965,
btln001966,btln001967,btln001968,btln001969,btln001970,btln001971,
btln001972,btln001973,btln001992,btln001996,btln001997,btln001999,
btln002000,btln002006,btln002007,btln002008,btln002009,btln002010,
btln002011,btln002012,btln002013,btln002014,btln002015,btln002016,
btln002017,btln002018,btln002019,btln002020,btln002021,btln002022,
btln002023,btln002045,btln002046,btln002047,btln002048,btln002049,
btln002050,btln002051,btln002052,btln002053,btln002054,btln002055,
btln002056,btln002057,btln002058,btln002059,btln002060,btln002061,
btln002062,btln002063,btln002064,btln002065,btln002066,btln002067,
btln002068,btln002069,btln002070,btln002071,btln002072,btln002073,
btln002074,btln002075,btln002076,btln002077,btln002078,btln002082,
btln002083,btln002084,btln002090,btln002091,btln002092,btln002093,
btln002094,btln002095,btln002096,btln002097,btln002098,btln002099,
btln002100,btln002101,btln002102,btln002103,btln002105,btln002107,
btln002108,btln002122,btln002123,btln002124,btln002170,btln002171,
btln002172,btln002173,btln002174,btln002175,btln002176,btln002177,
btln002228,btln002229,btln002294,btln002295,btln002296,btln002297,
btln002298,btln002299,btln002301,btln002302,btln002307,btln002308,
btln002311,btln002312,btln002313,btln002314,btln002315,btln002316,
btln002317,btln002318,btln002343,btln002347,btln002364,btln002365,
btln002368,btln002369,btln002371,btln002372,btln001208,btln001209,
btln001210,btln001211,btln001225,btln001226,btln001227,btln001229,
btln001230,btln001244,btln001245,btln001248,btln001252,btln001253,
btln001258,btln001259,btln001284,btln001285,btln001286,btln001287,
btln001288,btln001289,btln001299,btln001300,btln001301,btln001302,
btln001303,btln001304,btln001305,btln001306,btln001307,btln001316,
btln001317,btln001318,btln001319,btln001320,btln001321,btln001322,
btln001323,btln001324,btln001325,btln001326,btln001331,btln001332,
btln001333,btln001334,btln001335,btln001336,btln001337,btln001338,
btln001339,btln001340,btln001347,btln001348,btln001349,btln001350,
btln001351,btln001352,btln001353,btln001354,btln001373,btln001374,
btln001386,btln001409,btln001412,btln001413,btln001427,btln001428,
btln001501,btln001502,btln001512,btln001521,btln001526,btln001527,
btln001528,btln001529,btln001530,btln001531,btln001532,btln001533,
btln001534,btln001543,btln001544,btln001545,btln001546,btln001547,
btln001548,btln001565,btln001566,btln001581,btln001583,btln001584,
btln001585,btln001586,btln001587,btln001588,btln001589,btln001590,
btln001591,btln001592,btln001593,btln001594,btln001595,btln001596,
btln001597,btln001598,btln001599,btln001600,btln001601,btln001651,
btln001652,btln001653,btln001654,btln001657,btln001658,btln001663,
btln001664,btln001674,btln001675,btln001676,btln001677,btln001685,
btln001686,btln001687,btln001688,btln001689,btln001690,btln001704,ln99844,
ln99845,ln99846,ln99847,ln99848,ln99849,ln99850,ln99851,ln99852,ln99853,
ln99854,ln99855,ln99856,ln99857,ln99858,ln99859,ln99860,ln99861,ln99862,
ln99863,ln99864,ln99865,ln99866,ln99867,ln99868,ln99869,ln99870,ln99871
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
