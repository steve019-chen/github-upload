node default {

  # Puppet agent custom settings
  class { 'puppet_agent_config::puppet_conf': }

  # LVM module used for creating non-rootvg filesystems
  class { 'lvm': }

# TELUS Lib module used for custom facts and functions
  include telus_lib

}

# CRQ30148 : Scheduled for deployment on Dec 12
# node ln98074, ln99030, ln98276,btln000002, btln002502, btln002561 {
#   class { 'role::rl_patrol_upgrade': }
# }

# lint:ignore:unquoted_node_name lint:ignore:140chars


# 20190124 CRQ32950 Flexera BT PR 500 hosts

# node btlp001980,btlp001981,btlp001982,btlp001983,btlp001984,btlp001985,btlp001986,
# btlp001987,btlp001988,btlp001989,btlp001994,btlp001995,btlp001996,btlp001997,btlp001998,
# btlp001999,btlp002000,btlp002001,btlp002002,btlp002003,btlp002004,btlp002005,btlp002006,
# btlp002007,btlp002008,btlp002009,btlp002010,btlp002011,btlp002012,btlp002013,btlp002014,
# btlp002015,btlp002016,btlp002017,btlp002018,btlp002019,btlp002020,btlp002021,btlp002022,
# btlp002023,btlp002024,btlp002025,btlp002026,btlp002027,btlp002028,btlp002029,btlp002030,
# btlp002031,btlp002032,btlp002033,btlp002034,btlp002035,btlp002036,btlp002037,btlp002038,
# btlp002039,btlp002040,btlp002041,btlp002042,btlp002043,btlp002044,btlp002051,btlp002054,
# btlp002055,btlp002064,btlp002065,btlp002068,btlp002069,btlp002072,btlp002075,btlp002076,
# btlp002077,btlp002078,btlp002079,btlp002080,btlp002081,btlp002082,btlp002083,btlp002084,
# btlp002090,btlp002091,btlp002092,btlp002096,btlp002119,btlp002120,btlp002121,btlp002122,
# btlp002123,btlp002124,btlp002125,btlp002126,btlp002127,btlp002128,btlp002129,btlp002130,
# btlp002134,btlp002135,btlp002136,btlp002137,btlp002138,btlp002140,btlp002141,btlp002142,
# btlp002143,btlp002144,btlp002145,btlp002146,btlp002165,btlp002166,btlp002168,btlp002169,
# btlp002173,btlp002176,btlp002183,btlp002186,btlp002193,btlp002198,btlp002200,btlp002201,
# btlp002202,btlp002203,btlp002206,btlp002207,btlp002208,btlp002209,btlp002212,btlp002213,
# btlp002214,btlp002217,btlp002265,btlp002266,btlp002269,btlp002270,btlp002271,btlp002272,
# btlp002273,btlp002274,btlp002275,btlp002283,btlp002284,btlp002287,btlp002288,btlp002289,
# btlp002290,btlp002291,btlp002292,btlp002293,btlp002294,btlp002295,btlp002296,btlp002297,
# btlp002298,btlp002299,btlp002300,btlp002301,btlp002302,btlp002303,btlp002304,btlp002307,
# btlp002308,btlp002309,btlp002310,btlp002311,btlp002312,btlp002313,btlp002314,btlp002315,
# btlp002316,btlp002317,btlp002340,btlp002341,btlp002348,btlp002377,btlp002430,btlp002431,
# btlp002440,btlp002441,btlp002452,btlp002453,btlp002456,btlp002457,btlp002458,btlp002459,
# btlp002500,btlp002521,btlp002522,btlp002523,btlp002524,btlp002525,btlp002526,btlp002527,
# btlp002528,btlp002535,btlp002536,btlp002537,btlp002538,btlp002539,btlp002540,btlp002542,
# btlp002549,btlp002550,btlp002564,btlp002565,btlp002566,btlp002567,btlp002571,btlp002576,
# btlp002577,btlp002578,btlp002594,btlp002596,btlp002597,btlp002598,btlp002603,btlp002604,
# btlp002605,btlp002606,btlp002607,btlp002613,btlp002614,btlp002615,btlp002616,btlp002626,
# btlp002627,btlp002628,btlp002629,btlp002630,btlp002632,btlp002633,btlp002636,btlp002637,
# btlp002638,btlp002639,btlp002640,btlp002641,btlp002642,btlp002667,btlp002668,btlp002669,
# btlp002670,btlp002685,btlp002686,btlp002687,btlp002688,btlp002689,btlp002690,btlp002691,
# btlp002693,btlp002695,btlp002782,btlp002783,btlp002784,btlp002785,btlp002786,btlp002787,
# btlp002788,btlp002789,btlp003101,btlp003129,btlp003144,btlp003145,btlp003146,btlp003147,
# btlp003151,btlp003152,btlp003153,btlp003154,btlp003155,btlp003156,btlp003160,btlp003161,
# btlp003162,btlp003163,btlp003164,btlp003196,btlp003197,btlp003198,btlp003200,btlp003201,
# btlp004004,btlp004005,btlp004006,btlp006004,btlp006005,btlp006006,btlp006061,btlp006062,
# btlp006069,btlp006070,btlp006071,btlp006072,btlp006085,btlp006086,btlp006101,btlp006102,
# btlp006112,btlp006125,btlp006126,btlp006127,btlp006128,btlp006129,btlp006130,btlp006131,
# btlp006132,btlp006134,btlp006139,btlp006140,btlp006141,btlp006142,btlp006143,btlp006144,
# btlp006145,btlp006146,btlp006147,btlp006148,btlp006157,btlp006158,btlp006159,btlp006160,
# btlp006171,btlp006172,btlp006173,btlp006174,btlp006175,btlp006178,btlp006179,btlp006217,
# btlp006218,btlp006219,btlp006220,btlp006221,btlp006222,btlp006223,btlp006224,btlp006225,
# btlp006226,btlp006227,btlp006228,btlp006229,btlp006230,btlp006231,btlp006245,btlp006251,
# btlp006252,btlp006253,btlp006266,btlp006267,btlp006269,btlp006271,btlp006278,btlp006279,
# btlp006280,btlp006281,btlp006282,btlp006283,btlp006284,btlp006295,btlp006306,btlp006307,
# btlp006308,btlp006309,btlp006310,btlp006311,btlp006312,btlp006313,btlp006314,btlp006315,
# btlp006316,btlp006317,btlp006318,btlp006319,btlp006328,btlp006329,btlp006330,btlp006331,
# btlp006332,btlp006333,btlp006334,btlp006335,btlp006336,btlp006351,btlp006352,btlp006353,
# btlp006354,btlp006359,btlp006360,btlp006361,btlp006362,btlp006363,btlp006364,btlp006365,
# btlp006366,btlp006367,btlp006368,btlp006369,btlp006370,btlp006371,btlp006372,btlp006448,
# btlp006458,btlp006459,btlp006497,btlp006498,btlp006499,btlp006500,btlp006501,btlp006502,
# btlp006503,btlp006504,btlp006505,btlp006506,btlp006507,btlp006508,btlp006509,btlp006510,
# btlp006511,btlp006512,btlp006513,btlp006514,btlp006515,btlp006516,btlp006517,btlp006518,
# btlp006519,btlp006520,btlp006521,btlp006522,btlp006523,btlp006524,btlp006525,btlp006526,
# btlp006527,btlp006528,btlp006529,btlp006530,btlp006531,btlp006532,btlp006533,btlp006534,
# btlp006547,btlp006548,btlp006549,btlp006550,btlp006551,btlp006552,btlp006553,btlp006554,
# btlp006555,btlp006556,btlp006557,btlp006558,btlp006563,btlp006564,btlp006565,btlp006566,
# btlp006567,btlp006568,btlp006569,btlp006570,btlp006571,btlp006572,btlp006574,btlp006578,
# btlp006579,btlp006580,btlp006581,btlp006582,btlp006583,btlp006584,btlp006585,btlp006588,
# btlp006589,btlp006590,btlp006939,btlp006940,btlp006941,btlp006974,btlp006975,btlp006976,
# btlp006977,btlp006978,btlp006981,btlp006987,btlp006988,btlp006989,btlp006990,btlp006991,
# btlp006992,btlp006993,btlp006994,btlp006995,btlp006996,btlp006997,btlp006998,btlp007006,
# btlp007008,btlp007016,btlp007017,btlp007018,btlp007019 {
#   class { 'role::rl_flexera': }
# }


# 20190122 CRQ32851 Flexera BT PR 500 hosts

# node btlp000003,btlp000012,btlp000014,btlp000015,btlp000033,btlp000034,btlp000035,btlp000036,btlp000037,
# btlp000082,btlp000083,btlp000084,btlp000085,btlp000086,btlp000087,btlp000093,btlp000094,btlp000099,
# btlp000100,btlp000101,btlp000102,btlp000140,btlp000141,btlp000142,btlp000143,btlp000144,btlp000145,
# btlp000146,btlp000147,btlp000148,btlp000149,btlp000150,btlp000151,btlp000152,btlp000153,btlp000154,
# btlp000162,btlp000163,btlp000164,btlp000165,btlp000166,btlp000167,btlp000174,btlp000175,btlp000176,
# btlp000177,btlp000178,btlp000179,btlp000180,btlp000181,btlp000182,btlp000183,btlp000184,btlp000185,
# btlp000186,btlp000187,btlp000188,btlp000189,btlp000190,btlp000192,btlp000208,btlp000209,btlp000210,
# btlp000211,btlp000212,btlp000213,btlp000214,btlp000215,btlp000216,btlp000217,btlp000218,btlp000246,
# btlp000247,btlp000267,btlp000268,btlp000269,btlp000270,btlp000271,btlp000293,btlp000294,btlp000301,
# btlp000302,btlp000307,btlp000308,btlp000332,btlp000333,btlp000334,btlp000335,btlp000337,btlp000338,
# btlp000339,btlp000340,btlp000345,btlp000346,btlp000347,btlp000348,btlp000349,btlp000350,btlp000351,
# btlp000352,btlp000353,btlp000354,btlp000355,btlp000364,btlp000365,btlp000369,btlp000371,btlp000372,
# btlp000373,btlp000387,btlp000388,btlp000392,btlp000395,btlp000402,btlp000403,btlp000425,btlp000455,
# btlp000456,btlp000499,btlp000507,btlp000524,btlp000549,btlp000550,btlp000551,btlp000552,btlp000553,
# btlp000554,btlp000557,btlp000558,btlp000559,btlp000560,btlp000567,btlp000571,btlp000572,btlp000573,
# btlp000574,btlp000575,btlp000576,btlp000577,btlp000578,btlp000579,btlp000580,btlp000581,btlp000582,
# btlp000585,btlp000591,btlp000592,btlp000595,btlp000596,btlp000597,btlp000598,btlp000620,btlp000621,
# btlp000629,btlp000630,btlp000631,btlp000632,btlp000633,btlp000720,btlp000721,btlp000728,btlp000743,
# btlp000744,btlp000753,btlp000754,btlp000755,btlp000757,btlp000758,btlp000762,btlp000769,btlp000784,
# btlp000785,btlp000786,btlp000805,btlp000806,btlp000811,btlp000816,btlp000817,btlp000818,btlp000819,
# btlp000820,btlp000821,btlp000822,btlp000823,btlp000824,btlp000825,btlp000826,btlp000827,btlp000832,
# btlp000833,btlp000860,btlp000861,btlp000862,btlp000863,btlp000864,btlp000865,btlp000866,btlp000867,
# btlp000869,btlp000874,btlp000875,btlp000876,btlp000877,btlp000878,btlp000879,btlp000880,btlp000885,
# btlp000886,btlp000887,btlp000888,btlp000889,btlp000890,btlp000901,btlp000902,btlp000906,btlp000907,
# btlp000908,btlp000909,btlp000910,btlp000911,btlp000921,btlp000941,btlp000942,btlp000943,btlp000946,
# btlp000947,btlp000948,btlp000949,btlp000950,btlp000951,btlp000954,btlp000957,btlp000959,btlp000960,
# btlp000962,btlp000967,btlp000968,btlp000969,btlp000970,btlp000971,btlp000972,btlp000973,btlp000974,
# btlp000975,btlp001010,btlp001014,btlp001015,btlp001016,btlp001017,btlp001018,btlp001025,btlp001026,
# btlp001027,btlp001036,btlp001037,btlp001044,btlp001060,btlp001061,btlp001064,btlp001070,btlp001071,
# btlp001072,btlp001074,btlp001075,btlp001076,btlp001079,btlp001080,btlp001081,btlp001193,btlp001194,
# btlp001200,btlp001201,btlp001202,btlp001203,btlp001207,btlp001208,btlp001218,btlp001226,btlp001227,
# btlp001231,btlp001246,btlp001247,btlp001248,btlp001249,btlp001250,btlp001254,btlp001255,btlp001258,
# btlp001267,btlp001268,btlp001269,btlp001270,btlp001292,btlp001293,btlp001305,btlp001306,btlp001308,
# btlp001311,btlp001312,btlp001313,btlp001316,btlp001317,btlp001326,btlp001327,btlp001328,btlp001329,
# btlp001330,btlp001345,btlp001371,btlp001372,btlp001373,btlp001374,btlp001375,btlp001376,btlp001377,
# btlp001378,btlp001379,btlp001380,btlp001386,btlp001387,btlp001408,btlp001411,btlp001412,btlp001413,
# btlp001414,btlp001415,btlp001416,btlp001417,btlp001436,btlp001437,btlp001438,btlp001439,btlp001440,
# btlp001441,btlp001457,btlp001462,btlp001468,btlp001469,btlp001470,btlp001471,btlp001473,btlp001474,
# btlp001475,btlp001476,btlp001483,btlp001486,btlp001487,btlp001488,btlp001496,btlp001497,btlp001537,
# btlp001538,btlp001543,btlp001544,btlp001545,btlp001546,btlp001547,btlp001554,btlp001555,btlp001573,
# btlp001574,btlp001575,btlp001576,btlp001577,btlp001578,btlp001579,btlp001580,btlp001581,btlp001582,
# btlp001583,btlp001584,btlp001585,btlp001586,btlp001587,btlp001588,btlp001589,btlp001684,btlp001685,
# btlp001712,btlp001713,btlp001721,btlp001722,btlp001728,btlp001729,btlp001732,btlp001733,btlp001734,
# btlp001735,btlp001736,btlp001737,btlp001738,btlp001739,btlp001740,btlp001741,btlp001742,btlp001743,
# btlp001744,btlp001745,btlp001746,btlp001747,btlp001748,btlp001749,btlp001750,btlp001751,btlp001752,
# btlp001753,btlp001758,btlp001759,btlp001760,btlp001761,btlp001762,btlp001763,btlp001764,btlp001765,
# btlp001766,btlp001767,btlp001768,btlp001769,btlp001770,btlp001771,btlp001772,btlp001773,btlp001774,
# btlp001775,btlp001776,btlp001777,btlp001827,btlp001828,btlp001829,btlp001830,btlp001831,btlp001833,
# btlp001834,btlp001869,btlp001870,btlp001871,btlp001872,btlp001900,btlp001901,btlp001908,btlp001909,
# btlp001910,btlp001911,btlp001916,btlp001918,btlp001919,btlp001920,btlp001921,btlp001922,btlp001938,
# btlp001939,btlp001941,btlp001942,btlp001943,btlp001944,btlp001945,btlp001947,btlp001948,btlp001949,
# btlp001950,btlp001951,btlp001952,btlp001953,btlp001954,btlp001955,btlp001956,btlp001957,btlp001958,
# btlp001959,btlp001960,btlp001962,btlp001963,btlp001964,btlp001965,btlp001966,btlp001967,btlp001968,
# btlp001969,btlp001970,btlp001971,btlp001972,btlp001973,btlp001974,btlp001975,btlp001976,btlp001977,
# btlp001978,btlp001979 {
#   class { 'role::rl_flexera': }
# }

# 20190122 CRQ32851 Flexera BT PR 500 hosts - MoM clients

# node btln000197, btln002494,btlp000336,btlp000966,btlp007214,btlp007229,lp99604,lp99605,tslp000439,tslp000441,
# tslp000443,tslp000578 {
#   class { 'role::rl_flexera': }
# }


# 20190117 CRQ32715 Flexera BT NP 500 hosts

node btln000005,btln000006,btln000009,btln000010,btln000011,btln000012,btln000013,btln000014,btln000043,
btln000044,btln000057,btln000058,btln000059,btln000060,btln000091,btln000092,btln000094,btln000095,btln000096,
btln000097,btln000106,btln000112,btln000113,btln000114,btln000115,btln000116,btln000117,btln000118,btln000119,
btln000120,btln000125,btln000136,btln000195,btln000207,btln000209,btln000260,btln000261,btln000262,btln000263,
btln000264,btln000265,btln000266,btln000267,btln000268,btln000269,btln000270,btln000271,btln000272,btln000273,
btln000274,btln000275,btln000276,btln000277,btln000280,btln000281,btln000282,btln000283,btln000284,btln000285,
btln000286,btln000287,btln000302,btln000306,btln000313,btln000314,btln000315,btln000316,btln000317,btln000318,
btln000319,btln000320,btln000321,btln000322,btln000323,btln000324,btln000325,btln000326,btln000327,btln000328,
btln000331,btln000332,btln000333,btln000334,btln000337,btln000338,btln000353,btln000354,btln000355,btln000357,
btln000360,btln000365,btln000366,btln000367,btln000368,btln000456,btln000457,btln000671,btln000672,btln000675,
btln000676,btln000677,btln000678,btln000679,btln000680,btln000681,btln000704,btln000914,btln000924,btln000928,
btln000929,btln000932,btln000944,btln000962,btln000963,btln000964,btln000965,btln000966,btln000967,btln000968,
btln000969,btln000970,btln000971,btln000973,btln000974,btln000975,btln000976,btln000979,btln000980,btln000981,
btln001002,btln001003,btln001011,btln001017,btln001018,btln001020,btln001026,btln001027,btln001028,btln001029,
btln001030,btln001031,btln001032,btln001033,btln001047,btln001048,btln001049,btln001050,btln001060,btln001061,
btln001064,btln001065,btln001124,btln001125,btln001126,btln001127,btln001154,btln001171,btln001172,btln001173,
btln001174,btln001175,btln001176,btln001177,btln001178,btln001179,btln001180,btln001181,btln001182,btln001183,
btln001204,btln001208,btln001209,btln001226,btln001227,btln001234,btln001235,btln001244,btln001248,btln001252,
btln001253,btln001267,btln001284,btln001285,btln001286,btln001287,btln001288,btln001289,btln001290,btln001291,
btln001299,btln001300,btln001301,btln001302,btln001303,btln001304,btln001305,btln001306,btln001314,btln001326,
btln001331,btln001332,btln001333,btln001334,btln001335,btln001336,btln001337,btln001338,btln001339,btln001340,
btln001371,btln001372,btln001373,btln001374,btln001386,btln001395,btln001396,btln001507,btln001510,btln001512,
btln001524,btln001525,btln001526,btln001528,btln001531,btln001532,btln001561,btln001562,btln001563,btln001580,
btln001583,btln001585,btln001586,btln001587,btln001588,btln001591,btln001592,btln001614,btln001615,btln001616,
btln001617,btln001644,btln001645,btln001648,btln001662,btln001663,btln001664,btln001672,btln001673,btln001674,
btln001675,btln001676,btln001677,btln001678,btln001691,btln001692,btln001693,btln001694,btln001695,btln001696,
btln001704,btln001713,btln001714,btln001716,btln001717,btln001718,btln001719,btln001741,btln001812,btln001818,
btln001826,btln001860,btln001954,btln001955,btln001974,btln001975,btln001976,btln001977,btln001978,btln001979,
btln001980,btln001981,btln001982,btln001983,btln001984,btln001985,btln001986,btln001987,btln001988,btln001989,
btln001990,btln001991,btln002044,btln002080,btln002081,btln002086,btln002088,btln002089,btln002115,btln002116,
btln002117,btln002118,btln002119,btln002125,btln002126,btln002178,btln002179,btln002269,btln002270,btln002272,
btln002273,btln002274,btln002275,btln002276,btln002277,btln002278,btln002279,btln002280,btln002281,btln002282,
btln002303,btln002304,btln002305,btln002319,btln002320,btln002321,btln002322,btln002323,btln002324,btln002325,
btln002326,btln002336,btln002337,btln002338,btln002339,btln002340,btln002341,btln002351,btln002352,btln002353,
btln002370,btln002415,btln002416,btln002417,btln002418,btln002419,btln002420,btln002439,btln002440,btln002441,
btln002442,btln002443,btln002444,btln002445,btln002446,btln002468,btln002489,btln002516,btln002517,btln002518,
btln002519,btln002548,btln002549,btln002550,btln002551,btln002552,btln002559,btln002561,btln002577,btln002578,
btln002579,btln002580,btln002581,btln002582,btln002583,btln002584,btln002585,btln002586,btln002587,btln002588,
btln002589,btln002590,btln002591,btln002592,btln002662,btln002663,btln002664,btln002665,btln002666,btln002667,
btln002668,btln002669,btln002692,btln002693,btln002694,btln002695,btln002701,btln002703,btln002704,btln002705,
btln002706,btln002707,btln002708,btln002839,btln002901,btln002913,btln002914,btln002918,btln002974,btln002975,
btln002976,btln002978,btln002979,btln002985,btln003001,btln003002,btln003017,btln003018,btln003019,btln003020,
btln003021,btln003068,btln003069,btln007030,btln007042,btln007043,btln007048,btln007049,btln007050,btln007051,
btln007052,btln007053,btln007085,btln007086,btln007087,btln007088,btln007089,btln007090,btln007091,btln007098,
btln007099,btln007104,btln007111,btln007112,btln007119,btln007120,btln007121,btln007122,btln007123,btln007124,
btln007125,btln007126,btln007127,btln007131,btln007132,btln007133,btln007134,btln007135,btln007153,btln007154,
btln007155,btln007156,btln007157,btln007158,btln007159,btln007160,btln007161,btln007179,btln007180,btln007181,
btln007182,btln007183,btln007184,btln007185,btln007186,btln007187,btln007188,btln007189,btln007190,btln007191,
btln007192,btln007193,btln007194,btln007195,btln007197,btln007198,btln007220,btln007267,btln007268,btln007269,
btln007270,btln007305,btln007306,btln007307,btln007308,btln007363,btln007364,btln007365,btln007366,btln007367,
btln007368 {
  class { 'role::rl_flexera': }
}

node btlp007087, btlp007088,btlp007089,btlp007090,btlp007091,btlp007092,btlp007093,btlp007094,btlp007095,btlp007096,
btlp007097,btlp007098,btlp007099,btlp007100,btlp007101,btlp007102,btlp007103,btlp007104,btlp007105,btlp007106,
btlp007107,btlp007108,btlp007109,btlp007110,btlp007111,btlp007112,btlp007113,btlp007114,btlp007115,btlp007116 {
class { 'role::rl_bcg_shannon': }
}

# 20190116 temporarily comment out for Flexera change

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
# ln99663,ln99664,ln99772,ln99825,ln99827,ln99641,ln99642,btln007390,btln007388
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
