node default {

  # Puppet agent custom settings
  class { 'puppet_agent_config::puppet_conf': }

  # LVM module used for creating non-rootvg filesystems
  class { 'lvm': }

# TELUS Lib module used for custom facts and functions
  include telus_lib

}

# lint:ignore:unquoted_node_name lint:ignore:140chars

# Flexera testing

node ln-test11 {
  class { 'role::rl_flexera': }
}

# 20181116 CRQ27050 Flexera agent install NP 315 SIDC servers - moved to 20181120

node btln002362,btln002363,btln002364,btln002365,btln002371,btln002372,btln002373,btln002374,btln002375,
btln002376,btln002377,btln002380,btln002381,btln002384,btln002385,btln002404,btln002405,btln002410,btln002411,
btln002421,btln002426,btln002427,btln002428,btln002429,btln002448,btln002461,btln002462,btln002463,btln002470,
btln002471,btln002472,btln002473,btln002474,btln002475,btln002476,btln002479,btln002480,btln002481,btln002483,
btln002484,btln002487,btln002497,btln002523,btln002531,btln002532,btln002536,btln002537,btln002538,btln002539,
btln002540,btln002541,btln002542,btln002613,btln002614,btln002615,btln002616,btln002617,btln002618,btln002619,
btln002620,btln002622,btln002623,btln002624,btln002625,btln002626,btln002627,btln002628,btln002629,btln002630,
btln002631,btln002632,btln002633,btln002634,btln002635,btln002636,btln002672,btln002673,btln002674,btln002675,
btln002676,btln002677,btln002686,btln002687,btln002688,btln002689,btln002690,btln002691,btln002696,btln002697,
btln002698,btln002699,btln002711,btln002712,btln002713,btln002714,btln002715,btln002716,btln002717,btln002718,
btln002719,btln002720,btln002721,btln002722,btln002723,btln002724,btln002725,btln002726,btln002727,btln002728,
btln002741,btln002742,btln002743,btln002744,btln002745,btln002746,btln002747,btln002748,btln002751,btln002752,
btln002771,btln002772,btln002773,btln002774,btln002775,btln002776,btln002784,btln002786,btln002790,btln002791,
btln002796,btln002797,btln002801,btln002802,btln002815,btln002816,btln002817,btln002818,btln002819,btln002820,
btln002821,btln002831,btln002853,btln002854,btln002855,btln002856,btln002857,btln002858,btln002859,btln002875,
btln002877,btln002991,btln002992,btln002993,btln002994,btln002995,btln002996,btln002997,btln002998,btln002999,
btln003000,btln003004,btln003032,btln003065,btln003066,btln003070,btln003071,btln007000,btln007001,btln007031,
btln007032,btln007056,btln007057,btln007058,btln007059,btln007071,btln007072,btln007073,btln007074,btln007075,
btln007076,btln007092,btln007093,btln007094,btln007095,btln007096,btln007097,btln007100,btln007101,btln007102,
btln007103,btln007105,btln007106,btln007107,btln007128,btln007129,btln007130,btln007141,btln007142,btln007146,
btln007147,btln007164,btln007165,btln007166,btln007167,btln007168,btln007169,btln007170,btln007171,btln007172,
btln007173,btln007174,btln007175,btln007176,btln007177,btln007223,btln007224,btln007225,btln007226,btln007227,
btln007228,btln007229,btln007230,btln007231,btln007232,btln007233,btln007234,btln007235,btln007236,btln007237,
btln007239,btln007240,btln007241,btln007242,btln007243,btln007244,btln007246,btln007251,btln007252,btln007253,
btln007254,btln007255,btln007256,btln007257,btln007258,btln007259,btln007260,btln007261,btln007262,btln007263,
btln007264,btln007265,btln007266,btln007294,btln007295,btln007298,btln007299,btln007300,btln007301,btln007311,
btln007312,btln007313,btln007314,btln007316,btln007317,btln007318,btln007319,btln007320,btln007321,btln007322,
btln007323,btln007324,btln007326,btln007327,btln007328,btln007332,btln007333,btln007334,btln007335,btln007337,
btln007349,btln007399,btln007400,btln007401,btln007402,btln007403,btln007404,btln007516,btln007517,btln007527,
btln007544,btln007545,btln007547,btln007571,btln007572,btln007573,btln007576,btln007578,btln007582,btln007584,
btln007585,btln007586,btln007605,btln007606,btln007607,btln007608,btln007611,btln007614,btln007615,btln007616,
btln007658,btln007661,btln007662,btln007664,btln007716,ln98319 {
    class { 'role::rl_flexera': }
}

# 20181115 CRQ26969 Flexera agent install PR 150 SIDC servers

# node btlp000250,btlp000251,btlp000253,btlp000254,btlp000255,btlp000256,btlp000257,btlp000258,btlp000259,
# btlp000260,btlp000261,btlp000262,btlp000263,btlp000264,btlp000266,btlp000309,btlp000310,btlp000311,btlp000312,
# btlp000313,btlp000327,btlp000342,btlp000343,btlp000356,btlp000357,btlp000358,btlp000359,btlp000366,btlp000367,
# btlp000368,btlp000385,btlp000386,btlp000390,btlp000391,btlp000393,btlp000411,btlp000412,btlp000413,btlp000414,
# btlp000415,btlp000416,btlp000417,btlp000418,btlp000419,btlp000447,btlp000448,btlp000453,btlp000454,btlp000495,
# btlp000496,btlp000497,btlp000498,btlp000501,btlp000502,btlp000503,btlp000506,btlp000525,btlp000547,btlp000548,
# btlp000561,btlp000562,btlp000584,btlp000589,btlp000590,btlp000617,btlp000618,btlp000619,btlp000627,btlp000628,
# btlp000646,btlp000647,btlp000652,btlp000653,btlp000654,btlp000656,btlp000669,btlp000670,btlp000683,btlp000684,
# btlp000685,btlp000686,btlp000713,btlp000729,btlp000730,btlp000733,btlp000734,btlp000735,btlp000749,btlp000750,
# btlp000752,btlp000756,btlp000759,btlp000760,btlp000761,btlp000763,btlp000764,btlp000765,btlp000779,btlp000780,
# btlp000781,btlp000789,btlp000790,btlp000804,btlp000808,btlp000809,btlp000810,btlp000828,btlp000836,btlp000837,
# btlp000838,btlp000839,btlp000870,btlp000871,btlp000872,btlp000873,btlp000881,btlp000882,btlp000883,btlp000884,
# btlp000912,btlp000913,btlp000914,btlp000915,btlp000916,btlp000917,btlp000918,btlp000919,btlp000944,btlp000945,
# btlp000952,btlp000953,btlp000965,btlp000978,btlp000979,btlp000980,btlp000981,btlp000993,btlp000994,btlp000995,
# btlp000996,btlp000997,btlp000998,btlp000999,btlp001000,btlp001004,btlp001005,btlp001006,btlp001007,btlp001008,
# btlp001009 {
#   class { 'role::rl_flexera': }
# }

# 20181115 CRQ26850 Flexera agent install NP 350 SIDC servers - moved to 20181116

# node btln000378,btln000379,btln000380,btln000381,btln000382,btln000383,btln000384,btln000385,btln000386,
# btln000387,btln000388,btln000389,btln000390,btln000391,btln000392,btln000393,btln000394,btln000395,btln000396,
# btln000397,btln000398,btln000399,btln000400,btln000401,btln000402,btln000403,btln000404,btln000405,btln000406,
# btln000407,btln000408,btln000409,btln000410,btln000411,btln000412,btln000413,btln000414,btln000415,btln000420,
# btln000421,btln000422,btln000423,btln000424,btln000425,btln000426,btln000427,btln000428,btln000429,btln000430,
# btln000431,btln000432,btln000433,btln000435,btln000436,btln000437,btln000438,btln000439,btln000440,btln000441,
# btln000442,btln000443,btln000444,btln000445,btln000501,btln000502,btln000503,btln000504,btln000505,btln000506,
# btln000510,btln000511,btln000518,btln000519,btln000537,btln000542,btln000553,btln000585,btln000586,btln000588,
# btln000589,btln000593,btln000594,btln000595,btln000605,btln000620,btln000623,btln000631,btln000639,btln000640,
# btln000641,btln000642,btln000643,btln000644,btln000695,btln000720,btln000721,btln000722,btln000724,btln000725,
# btln000726,btln000733,btln000738,btln000739,btln001236,btln001237,btln001260,btln001261,btln001266,btln001293,
# btln001294,btln001295,btln001296,btln001308,btln001309,btln001369,btln001370,btln001379,btln001399,btln001400,
# btln001407,btln001408,btln001414,btln001415,btln001419,btln001421,btln001422,btln001424,btln001425,btln001426,
# btln001429,btln001430,btln001431,btln001437,btln001438,btln001439,btln001440,btln001441,btln001442,btln001492,
# btln001494,btln001496,btln001498,btln001569,btln001570,btln001609,btln001610,btln001611,btln001633,btln001635,
# btln001636,btln001653,btln001654,btln001655,btln001656,btln001657,btln001658,btln001682,btln001684,btln001685,
# btln001686,btln001687,btln001688,btln001689,btln001690,btln001698,btln001699,btln001710,btln001711,btln001720,
# btln001721,btln001723,btln001724,btln001725,btln001726,btln001729,btln001730,btln001731,btln001734,btln001735,
# btln001736,btln001737,btln001742,btln001759,btln001762,btln001763,btln001785,btln001786,btln001787,btln001801,
# btln001803,btln001804,btln001805,btln001806,btln001808,btln001809,btln001810,btln001811,btln001819,btln001820,
# btln001828,btln001830,btln001831,btln001848,btln001849,btln001874,btln001877,btln001878,btln001880,btln001892,
# btln001893,btln001894,btln001895,btln001896,btln001897,btln001898,btln001899,btln001900,btln001901,btln001902,
# btln001996,btln001997,btln002000,btln002021,btln002022,btln002023,btln002025,btln002026,btln002027,btln002028,
# btln002029,btln002030,btln002031,btln002032,btln002033,btln002034,btln002035,btln002036,btln002037,btln002038,
# btln002039,btln002040,btln002041,btln002042,btln002043,btln002053,btln002054,btln002055,btln002056,btln002057,
# btln002058,btln002059,btln002060,btln002061,btln002062,btln002063,btln002064,btln002065,btln002066,btln002067,
# btln002068,btln002069,btln002070,btln002071,btln002072,btln002073,btln002074,btln002075,btln002076,btln002077,
# btln002078,btln002079,btln002085,btln002090,btln002091,btln002092,btln002094,btln002095,btln002097,btln002098,
# btln002105,btln002170,btln002171,btln002172,btln002173,btln002174,btln002176,btln002177,btln002181,btln002228,
# btln002229,btln002271,btln002293,btln002294,btln002295,btln002296,btln002301,btln002302,btln002317,btln002318,
# btln002350,btln000080,btln000081,btln000082,btln000083,btln000084,btln000085,btln000087,btln000088,btln000089,
# btln000090,btln000093,btln000098,btln000100,btln000101,btln000102,btln000103,btln000104,btln000121,btln000122,
# btln000153,btln000206,btln000278,btln000279,btln000288,btln000289,btln000290,btln000291,btln000292,btln000293,
# btln000294,btln000295,btln000296,btln000297,btln000300,btln000301,btln000310,btln000311,btln000312,btln000339,
# btln000340,btln000341,btln000342,btln000343,btln000348,btln000349,btln000351,btln000369,btln000370,btln000371,
# btln000372 {
#   class { 'role::rl_flexera': }
# }

# 20181114 CRQ26965 Flexera agent install PR 118 Legacy + 50 SIDC servers

# node lp97518,lp97520,lp98092,lp98093,lp98094,lp98167,lp98168,lp98171,lp98172,
# lp98173,lp98178,lp98179,lp98900,lp98901,lp98902,lp99061,lp99062,lp99063,lp99064,lp99065,lp99066,lp99272,
# lp99273,lp99276,lp99277,lp99278,lp99279,lp99317,lp99318,lp99319,lp99320,lp99379,lp99380,lp99381,lp99400,
# lp99401,lp99402,lp99403,lp99404,lp99405,lp99430,lp99431,lp99440,lp99441,lp99442,lp99443,lp99444,lp99445,
# lp99446,lp99447,lp99448,lp99449,lp99450,lp99451,lp99452,lp99453,lp99476,lp99477,lp99478,lp99508,lp99509,
# lp99510,lp99511,lp99516,lp99517,lp99518,lp99519,lp99531,lp99532,lp99538,lp99539,lp99540,lp99541,lp99542,
# lp99543,lp99544,lp99545,lp99546,lp99547,lp99548,lp99549,lp99550,lp99551,lp99552,lp99553,lp99563,lp99564,
# lp99565,lp99566,lp99567,lp99568,lp99569,lp99570,lp99571,lp99572,lp99573,lp99574,lp99575,lp99576,lp99577,
# lp99578,lp99579,lp99580,lp99581,lp99582,lp99583,lp99584,lp99585,lp99586,lp99602,lp99603,lp99669,lp99670,
# lp99671,lp99672,xp30082 {
#   class { 'role::rl_flexera': }
# }

# 20181114 CRQ27047 Flexera agent install NP 200 SIDC servers - moved to 20181115

# node btln000373,btln000374,btln000375,btln000376,btln000448,btln000449,btln000452,btln000453,btln000454,
# btln000458,btln000459,btln000462,btln000463,btln000464,btln000465,btln000471,btln000472,btln000473,btln000474,
# btln000662,btln000667,btln000682,btln000684,btln000685,btln000687,btln000691,btln000692,btln000693,btln000694,
# btln000904,btln000905,btln000906,btln000907,btln000908,btln000909,btln000916,btln000917,btln000918,btln000919,
# btln000920,btln000937,btln000938,btln000939,btln000940,btln000941,btln000942,btln000943,btln000960,btln000961,
# btln000972,btln000982,btln000983,btln001051,btln001062,btln001063,btln001066,btln001067,btln001068,btln001070,
# btln001072,btln001073,btln001075,btln001077,btln001084,btln001085,btln001086,btln001087,btln001088,btln001089,
# btln001090,btln001091,btln001092,btln001093,btln001097,btln001101,btln001106,btln001107,btln001134,btln001135,
# btln001137,btln001147,btln001156,btln001157,btln001158,btln001159,btln001162,btln001164,btln001165,btln001166,
# btln001169,btln001192,btln001193,btln001194,btln001195,btln001196,btln001197,btln001198,btln001199,btln001200,
# btln001203,btln001205,btln001206,btln001207,btln001210,btln001211,btln001225,btln001229,btln001230,btln001245,
# btln001256,btln001257,btln001258,btln001259,btln001307,btln001310,btln001316,btln001317,btln001318,btln001319,
# btln001320,btln001321,btln001322,btln001323,btln001324,btln001325,btln001341,btln001342,btln001343,btln001344,
# btln001345,btln001346,btln001347,btln001348,btln001349,btln001350,btln001351,btln001352,btln001353,btln001354,
# btln001409,btln001412,btln001413,btln001427,btln001428,btln001446,btln001447,btln001448,btln001449,btln001450,
# btln001451,btln001452,btln001453,btln001454,btln001455,btln001456,btln001457,btln001458,btln001459,btln001501,
# btln001502,btln001521,btln001527,btln001529,btln001530,btln001533,btln001534,btln001543,btln001544,btln001545,
# btln001546,btln001547,btln001548,btln001565,btln001566,btln001581,btln001584,btln001589,btln001590,btln001593,
# btln001594,btln001595,btln001596,btln001597,btln001598,btln001599,btln001600,btln001601,btln001602,btln001603,
# btln001604,btln001605,btln001639,btln001640,btln001643,btln001646,btln001647,btln001649,btln001650,btln001651,
# btln001652 {
#   class { 'role::rl_flexera': }
# }

# 20181113 CRQ26816 Flexera agent install PR 100 servers

# node lp97073,lp97200,lp97201,lp97202,lp97204,lp97205,lp97206,lp97207,lp97208,lp97295,lp97297,lp97319,
# lp97320,lp97321,lp97322,lp97334,lp97335,lp97336,lp97337,lp97338,lp97396,lp97397,lp97398,lp97399,lp97410,
# lp97411,lp97412,lp97413,lp97414,lp97415,lp97416,lp97417,lp97418,lp97421,lp97514,lp97515,lp97516,lp97517,
# lp97529,lp97530,lp97532,lp97533,lp97540,lp97541,lp97542,lp97543,lp97544,lp97545,lp97546,lp97547,lp97548,
# lp97549,lp97550,lp97551,lp97552,lp97566,lp97577,lp97578,lp97625,lp97632,lp97635,lp97648,lp97649,lp97664,
# lp97665,lp97666,lp97667,lp97709,lp97710,lp97716,lp97717,lp97718,lp97719,lp97720,lp97721,lp97722,lp97723,
# lp97724,ln99427,lp97726,lp97727,lp97728,lp97729,lp97730,lp97731,lp97746,lp97747,lp97750,lp97751,lp97754,
# lp97768,lp97769,lp97771,lp97772,lp97792,lp97793,lp97800,lp97801,lp97802,lp97803 {
#   class { 'role::rl_flexera': }
# }

# 20181113 CRQ27029 Flexera agent install NP 50 servers QIDC - rescheduled for 20181114

# node btln000001,btln000002,btln000003,btln000004,btln000028,btln000029,btln000030,btln000031,btln000032,
# btln000033,btln000034,btln000035,btln000036,btln000037,btln000038,btln000039,btln000040,btln000041,btln000042,
# btln000045,btln000046,btln000047,btln000048,btln000049,btln000050,btln000051,btln000052,btln000053,btln000054,
# btln000055,btln000056,btln000061,btln000062,btln000063,btln000064,btln000065,btln000066,btln000067,btln000068,
# btln000069,btln000070,btln000071,btln000072,btln000073,btln000074,btln000075,btln000076,btln000077,btln000078,
# btln000079 {
#   class { 'role::rl_flexera': }
# }

# 20181108 CRQ25075 Flexera agent install PR 100 servers (rescheduled for 20181113)

# node lp97100,lp97101,lp97102,lp97103,lp97104,lp97300,lp97302,lp97303,lp97313,lp97314,lp97316,lp97317,
# lp97318,lp97404,lp97405,lp97406,lp97420,lp97435,lp97519,lp97521,lp97600,lp97605,lp97640,lp97641,lp97650,
# lp97651,lp97804,lp97805,lp97806,lp97807,lp97808,lp97809,lp97810,lp97811,lp97812,lp97813,lp97814,lp97815,
# lp97816,lp97817,lp97818,lp97819,lp97820,lp97829,lp97840,lp97841,lp97842,lp97843,lp97850,lp97851,lp97852,
# lp97853,lp97871,lp97872,lp97873,lp97874,lp97887,lp97951,lp97966,lp97967,lp97968,lp97969,lp97970,lp97971,
# lp98011,lp98033,lp98037,lp98038,lp98039,lp98045,lp98046,lp98047,lp98048,lp98049,lp98051,lp98052,lp98053,
# lp98054,lp98055,lp98056,lp98057,lp98059,lp98060,lp98061,lp98062,lp98063,lp98066,lp98067,lp98068,lp98069,
# lp98070,lp98071,lp98072,lp98073,lp98074,lp98075,lp98121,lp98122,lp98123,lp98166 {
#   class { 'role::rl_flexera': }
# }

# 20181107 CRQ26712 Flexera agent install NP

# node ln97901,ln97902,ln98318,ln98320,ln98321,ln98322,ln98323,ln98324,ln98325,ln98496,ln98497,ln98509,
# ln98510,ln98511,ln98512,ln98513,ln98517,ln98518,ln98519,ln98520,ln98550,ln98551,ln98552,ln98553,ln98554,
# ln98555,ln98556,ln98557,ln98558,ln98559,ln98560,ln98561,ln98562,ln98563,ln98570,ln98571,ln98573,ln98574,
# ln98588,ln98590,ln98591,ln98592,ln98593,ln98594,ln98595,ln98596,ln98597,ln98598,ln98609,ln98610,ln98611,
# ln98612,ln98775,ln98776,ln98777,ln98778,ln98779,ln98780,ln98781,ln98782,ln98783,ln98784,ln98785,ln98787,
# ln98788,ln98824,ln98825,ln98840,ln98841,ln98842,ln98843,ln98844,ln98845,ln98848,ln98849,ln98909,ln98921,
# ln98933,ln98934,ln98935,ln98936,ln98937,ln98938,ln98939,ln98940,ln99009,ln99010,ln99011,ln99012,ln99013,
# ln99014,ln99015,ln99016,ln99017,ln99032,ln99033,ln99034,ln99054,ln99080,ln99101,ln99102,ln99103,ln99163,
# ln99164,ln99167,ln99198,ln99199,ln99202,ln99203,ln99225,ln99226,ln99227,ln99228,ln99229,ln99230,ln99231,
# ln99232,ln99233,ln99234,ln99235,ln99236,ln99237,ln99238,ln99239,ln99240,ln99241,ln99242,ln99243,ln99244,
# ln99245,ln99246,ln99247,ln99254,ln99348,ln99435,ln99436,ln99511,ln99512,ln99514,ln99515,ln99517,ln99518,
# ln99519,ln99520,ln99521,ln99524,ln99525,ln99578,ln99579,ln99580,ln99581,ln99582,ln99583,ln99584,ln99586,
# ln99587,ln99613,ln99614,ln99615,ln99616,ln99617,ln99618,ln99619,ln99621,ln99622,ln99623,ln99624,ln99627,
# ln99628,ln99629,ln99630,ln99631,ln99632,ln99633,ln99634,ln99635,ln99636,ln99637,ln99638,ln99639,ln99640,
# ln99641,ln99642,ln99643,ln99645,ln99646,ln99649,ln99663,ln99664,ln99665,ln99666,ln99667,ln99669,ln99670,
# ln99675,ln99702,ln99703,ln99705,ln99706,ln99707,ln99708,ln99716,ln99717,ln99776,ln99777,ln99778,ln99779,
# ln99780,ln99781,ln99782,ln99783,ln99784,ln99785,ln99786,ln99787,ln99788,ln99789,ln99790,ln99791,ln99792,
# ln99793,ln99794,ln99795,ln99826,ln99827,ln99557,ln99093,ln99210,ln99211,ln99212,ln99213,ln99214,ln99215,
# ln99216,ln99217,ln99218,ln99219,ln99220,ln99221,ln99222,ln99223,ln99249,ln99272,ln99278,ln99380,ln99381,
# ln99382,ln99406,ln99407,ln99484,ln99485,ln99506,ln99507,ln99508,ln99509,ln99510,ln99543,ln99544,ln99545,
# ln99796,ln99797,ln99798,ln99799,ln99800,ln99801,ln99802,ln99803,ln99804,ln99805,ln98847,ln98943,ln98944,
# ln98945,ln98946,ln99538,ln99539,ln99546,ln99547,ln99548,ln99549,ln99550,ln99551,ln99552,ln99553,ln99554,
# ln99555 {
#   class { 'role::rl_flexera': }
# }

# 20181106 CRQ25158 Flexera agent install NP

# node ln98420,ln98421,ln98422,ln98423,ln98424,ln98425,ln98426,ln98427,ln98428,ln98429,ln98430,ln98431,
# ln98432,ln98433,ln98434,ln98435,ln98436,ln98437,ln98438,ln98440,ln98441,ln98442,ln98443,ln98444,ln98445,
# ln98446,ln98447,ln98448,ln98449,ln98450,ln98451,ln98452,ln98453,ln98454,ln98455,ln98456,ln98457,ln98458,
# ln98459,ln98480,ln98481,ln98482,ln98483,ln98487,ln98488,ln98489,ln98490,ln98491,ln98494,ln98495,ln98581,
# ln98582,ln98583,ln98584,ln98585,ln98586,ln98587,ln98789,ln98790,ln98846,ln98881,ln98882,ln98883,ln98884,
# ln98885,ln98886,ln98887,ln98888,ln98949,ln98950,ln98954,ln98955,ln98956,ln98957,ln98967,ln98968,ln99018,
# ln99019,ln99020,ln99021,ln99022,ln99023,ln99024,ln99025,ln99026,ln99027,ln99028,ln99029,ln99030,ln99031,
# ln99038,ln99084,ln99085,ln99086,ln99087,ln99088,ln99089,ln99090,ln99091,ln99092 {
#   class { 'role::rl_flexera': }
# }

# 20181102 CRQ25015 Flexera agent install NP

# node ln98057,ln98058,ln98070,ln98071,ln98072,ln98073,ln98074,ln98075,ln98080,ln98081,ln98082,ln98087,
# ln98088,ln98089,ln98090,ln98091,ln98092,ln98093,ln98142,ln98144,ln98152,ln98153,ln98154,ln98155,ln98156,
# ln98157,ln98161,ln98200,ln98201,ln98202,ln98203,ln98204,ln98251,ln98252,ln98253,ln98254,ln98255,ln98256,
# ln98257,ln98300,ln98301,ln98302,ln98310,ln98311,ln98312,ln98313,ln98314,ln98315,ln98316,ln98317 {
#  class { 'role::rl_flexera': }
# }

node btlp007087, btlp007088,btlp007089,btlp007090,btlp007091,btlp007092,btlp007093,btlp007094,btlp007095,btlp007096,
btlp007097,btlp007098,btlp007099,btlp007100,btlp007101,btlp007102,btlp007103,btlp007104,btlp007105,btlp007106,
btlp007107,btlp007108,btlp007109,btlp007110,btlp007111,btlp007112,btlp007113,btlp007114,btlp007115,btlp007116 {
class { 'role::rl_bcg_shannon': }
}

# 20181119 comment out temporarily due to conflict with Flexera

# node btln007523,btln007524,btln007717,btln007718,ln99773,ln99826, btln001649,btln001650,btln002025,btln002026,
# btln002027,btln002028,btln007399,btln007401,btln007402,ln99694,ln99695,ln99696,ln99734,ln99735,ln99778,
# ln99779,ln99784,ln99785,ln99788,ln99833,ln99834,ln99835,btln000045,btln000046,btln000047,btln000048,
# btln001604,btln001605,btln002031,btln002032,btln002042,btln007253,btln007254,btln007528,btln007529,btln007568,
# btln007569,btln007570,ln98312,ln98319,ln98320,ln98321,ln98556,ln98557,ln99227,ln99228,ln99229,ln99230,
# ln99254,ln99665,ln99666,ln99667,ln99770,ln99771,ln99822,ln99823,ln99824,ln99147,ln99148,btln000011,
# btln000012,ln99161,ln99162,ln98279,ln98280,ln99231,ln99232,ln99233,ln99234,ln98316,btln007386, btln007387,
# btlp006328,btlp006329,btlp006330,btlp006331,btlp006332,btlp006333,btlp006334,btlp006335,btln000406,btln000409,
# btln000408,ln98434,ln99217,ln98435,ln99216,ln98438,btln001602,btln001603,btln002029,btln002030,btln002041,
# btln007255,btln007256,btln007530,btln007531,btln007571,btln007572,btln007573,ln98315,ln98317,ln98318,ln98559,
# ln99663,ln99664,ln99772,ln99825,ln99827
# {
# class { 'role::rl_dynatrace': }
# }

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
