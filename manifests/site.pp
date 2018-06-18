node default {

# Puppet agent custom settings

  class { 'puppet_agent_config::puppet_conf': }

# LVM module used for creating non-rootvg filesystems

  class { 'lvm': }

}


#20180618 - KIDC NP - Puppet 5 Upgrade 
node btlp000811,btln002982,btln000425,btln000730,btln000731,btln000732,btln001185,btln001238,btln001239,btln001240,btln001241,btln001249,
btln001260,btln001261,btln001264,btln001265,btln001276,btln001281,btln001292,btln001293,btln001294,btln001295,btln001296,btln001297,
btln001298,btln001414,btln001415,btln001416,btln001421,btln001422,btln001423,btln001424,btln001772,btln001783,btln001844,btln001846,
btln002093,btln002096,btln002099,btln002100,btln002306,btln002307,btln002308,btln002309,btln002310,btln002456,btln002499,btln002501,
btln002696,btln002697,btln002699,btln002783,btln002785,btln002787,btln002788,btln002789,btln002792,btln002793,btln002794,btln002795,
btln002798,btln002799,btln002803,btln002804,btln002805,btln002806,btln002807,btln002808,btln002809,btln002810,btln002840,btln002889,
btln002897,btln002983,btln002984,btln002994,btln002995,btln002996,btln002997,btln002998,btln002999,btln003000,btln003004,btln003007,
btln003008,btln003009,btln003010,btln007162,btln007163,btln007230,btln007247,btln007248,btln007249,btln007250,btln007338,btln007339,
btln007340,btln007341,btln007342,btln007343,btln007344,btln007345,btln007346,btln007347,btln007348,btln007357,btln007358,btln007359,
btln007360,btln007361,btln007381,btln007382,btln007383,btlp000253,tsln000104,tslp000359,tslp000360,tslp000361,tslp000362,tslp000363,
tslp000417,tslp000418,tslp000419,tslp000420,tslp000421,tslp000563,tslp000564,tslp000565,tslp000567,tslp000568,tslp000569,tslp000570,
tslp000571,tslp000572,tslp000254,btln007150,btln001570,btln001571,btln001572,btln001573,btln001574,btln001576,btln001606,btln001607,
btln001608,btln001609,btln001610,btln001611,btln001633,btln001635,btln001636,btln001681,btln001682,btln001683,btln001684,btln001698,
btln001699,btln001729,btln001730,btln001731,btln001732,btln001733,btln001734,btln001735,btln001736,btln001737,btln001738,btln001739,
btln001740,btln001749,btln001750,btln001764,btln001765,btln001766,btln001767,btln001768,btln001769,btln001770,btln001771,btln001774,
btln001775,btln001776,btln001777,btln001780,btln001781,btln001782,btln001784,btln001785,btln001786,btln001787,btln001788,btln001789,
btln001790,btln001791,btln001792,btln001793,btln001794,btln001795,btln001796,btln001797,btln001798,btln001799,btln001801,btln001802,
btln001803,btln001804,btln001805,btln001806,btln001814,btln001820,btln001821,btln001822,btln001828,btln001829,btln001830,btln001831,
btln001832,btln001833,btln001836,btln001837,btln001838,btln001839,btln001840,btln001842,btln001843,btln001845,btln001848,btln001849,
btln001850,btln001851,btln001852,btln001853,btln001854,btln001855,btln001856,btln001858,btln001859,btln001892,btln001893,btln001894,
btln001895,btln001896,btln001897,btln001898,btln001899,btln001900,btln001901,btln001902,btln001952,btln001953,btln001956,btln001957,
btln001958,btln001960,btln001961,btln001962,btln001963,btln001964,btln001965,btln001966,btln001967,btln001968,btln001969,btln001970,
btln001971,btln001972,btln001973,btln001992,btln001996,btln001997,btln001999,btln002000,btln002003,btln002004,btln002005,btln002006,
btln002007,btln002008,btln002009,btln002010,btln002011,btln002012,btln002013,btln002014,btln002015,btln002016,btln002017,btln002019,
btln002020,btln002021,btln002022,btln002023,btln002045,btln002046,btln002047,btln002048,btln002049,btln002050,btln002051,btln002052,
btln002053,btln002054,btln002055,btln002056,btln002057,btln002058,btln002059,btln002060,btln002061,btln002062,btln002063,btln002064,
btln002065,btln002066,btln002067,btln002068,btln002070,btln002071,btln002072,btln002073,btln002074,btln002075,btln002076,btln002077,
btln002078,btln002082,btln002083,btln002084,btln002090,btln002091,btln002092,btln002094,btln002095,btln002097,btln002098,btln002101,
btln002102,btln002103,btln002104,btln002105,btln002107,btln002108,btln002122,btln002123,btln002124,btln002170,btln002171,btln002172,
btln002173,btln002174,btln002175,btln002176,btln002177,btln002228,btln002229,btln002294,btln002295,btln002296,btln002297,btln002298,
btln002299,btln002301,btln002302,btln002311,btln002312,btln002313,btln002314,btln002315,btln002316,btln002317,btln002318,btln002342,
btln002343,btln002344,btln002345,btln002346,btln002347,btln002364,btln002365,btln002368,btln002369,btln002371,btln002372,btln002373,
btln002374,btln002375,btln002376,btln002377,btln002378,btln002379,btln002380,btln002381,btln002382,btln002383,btln002384,btln002385,
btln002387,btln002388,btln002389,btln002390,btln002391,btln002392,btln002393,btln002394,btln002395,btln002396,btln002397,btln002398,
btln002399,btln002404,btln002405,btln002406,btln002407,btln002408,btln002409,btln002410,btln002411,btln002412,btln002435,btln002436,
btln002437,btln002438,btln002448,btln002449,btln002450,btln002451,btln002452,btln002453,btln002454,btln002455,btln002457,btln002458,
btln002461,btln002462,btln002463,btln002473,btln002474,btln002475,btln002476,btln002477,btln002478,btln002479,btln002480,btln002481,
btln002482,btln002483,btln002484,btln002485,btln002487,btln002490,btln002500,btln002502,btln002529,btln002530,btln002531,btln002532,
btln002540,btln002541,btln002542,btln002554,btln002555,tsln000108,tslp000050,tslp000051,tslp000052,tslp000053,tslp000057,tslp000058,
tslp000060,tslp000075,tslp000077,tslp000084,tslp000086,tslp000088,tslp000090,tslp000091,tslp000092,tslp000093,tslp000095,tslp000096,
tslp000097,tslp000098,tslp000150,tslp000218,tslp000219,tslp000221,tslp000225,tslp000274,tslp000275,tslp000288,tslp000290,tslp000291,
tslp000298,tslp000299,tslp000355,tslp000356,tslp000357,tslp000358,tslp000373,tslp000374,tslp000377,tslp000380,tslp000407,tslp000408,
tslp000413,tslp000414,tslp000415,tslp000416,tslp000431,tslp000432,tslp000521,tslp000522,tslp000523,tslp000524,tslp000525,tslp000526,
tslp000528,tslp000529,tslp000530,tslp000531,tslp000532,tslp000533,tslp000575,tslp000576,tslp000577,tslp000610,tslp000611,tslp000632,
tslp000652,tslp000653,tslp000654,tslp000655,tslp000656,tslp000657,tslp000658,tslp000659,tslp000667,tslp000668,tslp000669,tslp000670,
tslp000671,tslp000672,tslp000673,tslp000674,tslp000675,tslp000676,tslp000677,tslp000678,tslp000684,tslp000687,tslp000688,tslp000689,
tslp000694,tslp000695,tslp000725,tslp000729,tslp000736,tslp000749,tslp000750,tslp000785,tslp000786,btln002800,tslp000566,btln000382,
btln000388,btln000396,btln000397,btln000414,btln000415,btln000506,btln000509,btln000555,btln000604,btln000605,btln000695,btln001237,
btln001282,btln001312,btln001368,tslp000054,tslp000085,tslp000087,tslp000089,tslp000094,tslp000633 {
  class {'::puppet_agent':
    package_version => '5.5.1',
    service_names   => ['puppet'],
    manage_repo     => false,
  }
}


#20180618 - QIDC - Puppet 5 Upgrade 
node btln000106,btln002269,btln002270,tslp000260,btlp001287,btlp001288,tslp000259,btlp001265,btlp002444,tslp000261,tslp000516,
tslp000224,tslp000573,tslp000574,tslp000289,tslp000631,tslp000434,tslp000435,tslp000436,tslp000438,tslp000440,tslp000442,tslp000444,
tslp000445,tslp000446,btln000061,btln000302,btln000322,btln000456,btln000459,btln000466,btln000667,btln000908,btln000909,btln000914,
btln001026,btln001248,btln001328,btln001451,btln001452,btln001453,btln001454,btln001457,btln001458,btln001528,btln001562,btln001599,
btln001742,btln002413,btln003017,btln007030,btln007035,btln007036,btln007037,btln007078,btln007086,btln007087,btln007088,btln007089,
btln007090,btln007091,btln007158,btln007159,btln007160,btln007161,btln007267,btln007268,btln007269,tsln000105,tslp000008,tslp000264,
tslp000366,tslp000367,tslp000368,tslp000369,tslp000370,tslp000422,tslp000423,tslp000424,tslp000425,tslp000426,tslp000544,btln000342,
btln007119,btln007120,btln007121,btln007122,btln007123,btln007124,btln007125,btln007126,btln007127,btln007131,btln007132,btln007133,
btln007134,btln007135,btln000062,btln002668,btln000003,btln000004,btln000449,btln000452,btln000453,btln000458,btln000462,btln000465,
btln000469,btln000470,btln000471,btln000472,btln000473,btln000474,btln000475,btln000662,btln000672,btln000675,btln000676,btln000677,
btln000678,btln000679,btln000680,btln000681,btln000682,btln000684,btln000685,btln000687,btln000691,btln000692,btln000693,btln000694,
btln000704,btln000904,btln000905,btln000906,btln000907,btln000913,btln000916,btln000917,btln000918,btln000919,btln000920,btln000924,
btln000926,btln000927,btln000928,btln000929,btln000932,btln000933,btln000937,btln000939,btln000940,btln000941,btln000942,btln000943,
btln000944,btln000960,btln000961,btln000962,btln000963,btln000964,btln000965,btln000966,btln000967,btln000968,btln000969,btln000970,
btln000971,btln000973,btln000974,btln000975,btln000979,btln000980,btln000981,btln000982,btln000983,btln001002,btln001003,btln001011,
btln001018,btln001020,btln001027,btln001028,btln001029,btln001031,btln001032,btln001033,btln001047,btln001048,btln001049,btln001050,
btln001051,btln001060,btln001061,btln001062,btln001063,btln001064,btln001065,btln001066,btln001067,btln001068,btln001072,btln001073,
btln001075,btln001077,btln001084,btln001086,btln001087,btln001088,btln001089,btln001090,btln001091,btln001092,btln001093,btln001097,
btln001101,btln001107,btln001124,btln001125,btln001126,btln001127,btln001134,btln001135,btln001137,btln001147,btln001148,btln001154,
btln001156,btln001157,btln001158,btln001159,btln001162,btln001164,btln001165,btln001167,btln001168,btln001169,btln001170,btln001171,
btln001172,btln001173,btln001174,btln001175,btln001176,btln001177,btln001178,btln001179,btln001180,btln001181,btln001182,btln001183,
btln001192,btln001193,btln001194,btln001195,btln001196,btln001197,btln001198,btln001199,btln001200,btln001203,btln001204,btln001205,
btln001206,btln001207,btln001208,btln001209,btln001210,btln001211,btln001225,btln001226,btln001227,btln001229,btln001230,btln001233,
btln001234,btln001235,btln001244,btln001245,btln001252,btln001256,btln001257,btln001258,btln001259,btln001267,btln001269,btln001270,
btln001284,btln001285,btln001286,btln001287,btln001288,btln001289,btln001290,btln001291,btln001299,btln001300,btln001301,btln001302,
btln001303,btln001304,btln001305,btln001307,btln001310,btln001314,btln001316,btln001317,btln001318,btln001319,btln001320,btln001321,
btln001322,btln001323,btln001324,btln001325,btln001326,btln001327,btln001329,btln001330,btln001331,btln001332,btln001333,btln001334,
btln001335,btln001336,btln001337,btln001338,btln001339,btln001340,btln001341,btln001342,btln001343,btln001344,btln001345,btln001346,
btln001347,btln001348,btln001349,btln001350,btln001351,btln001352,btln001353,btln001354,btln001373,btln001374,btln001386,btln001409,
btln001412,btln001413,btln001427,btln001428,btln001446,btln001447,btln001449,btln001456,btln001501,btln001502,btln001507,btln001510,
btln001511,btln001512,btln001521,btln001525,btln001527,btln001529,btln001530,btln001531,btln001532,btln001533,btln001534,btln001543,
btln001544,btln001545,btln001546,btln001547,btln001548,btln001561,btln001563,btln001565,btln001566,btln001580,btln001581,btln001583,
btln001584,btln001585,btln001586,btln001587,btln001588,btln001589,btln001590,btln001591,btln001593,btln001594,btln001596,btln001597,
btln001598,btln001601,btln001602,btln001603,btln001605,btln001614,btln001615,btln001616,btln001617,btln001639,btln001640,btln001643,
btln001644,btln001645,btln001646,btln001647,btln001648,btln001649,btln001650,btln001651,btln001652,btln001653,btln001654,btln001655,
btln001656,btln001657,btln001658,btln001662,btln001663,btln001664,btln001672,btln001673,btln001674,btln001675,btln001676,btln001677,
btln001678,btln001685,btln001686,btln001687,btln001688,btln001689,btln001690,btln001692,btln001693,btln001694,btln001695,btln001696,
btln001704,btln001710,btln001711,btln001712,btln001713,btln001714,btln001715,btln001716,btln001717,btln001718,btln001719,btln001720,
btln001721,btln001723,btln001724,btln001725,btln001726,btln001741,btln001762,btln001763,btln001808,btln001809,btln001810,btln001811,
btln001812,btln001817,btln001818,btln001819,btln001826,btln001860,btln001874,btln001877,btln001878,btln001880,btln001954,btln001955,
btln001974,btln001975,btln001976,btln001977,btln001978,btln001979,btln001980,btln001981,btln001982,btln001983,btln001984,btln001985,
btln001986,btln001987,btln001988,btln001989,btln001990,btln001991,btln002025,btln002026,btln002027,btln002028,btln002029,btln002030,
btln002031,btln002032,btln002033,btln002034,btln002035,btln002036,btln002037,btln002038,btln002039,btln002040,btln002041,btln002042,
btln002043,btln002044,btln002079,btln007372,tsln000030,tslp000003,tslp000004,tslp000009,tslp000010,tslp000011,tslp000013,tslp000025,
tslp000027,tslp000029,tslp000046,tslp000114,tslp000119,tslp000144,tslp000169,tslp000211,tslp000235,tslp000236,tslp000237,tslp000238,
tslp000239,tslp000247,tslp000250,tslp000257,tslp000262,tslp000263,tslp000265,tslp000266,tslp000267,tslp000268,tslp000270,tslp000271,
tslp000272,tslp000273,tslp000276,tslp000277,tslp000286,tslp000287,tslp000300,tslp000301,tslp000364,tslp000365,tslp000375,tslp000376,
tslp000378,tslp000409,tslp000410,tslp000411,tslp000412,tslp000430,tslp000507,tslp000508,tslp000509,tslp000510,tslp000511,tslp000512,
tslp000513,tslp000514,tslp000515,tslp000517,tslp000518,tslp000519,tslp000534,tslp000535,tslp000536,tslp000537,tslp000538,tslp000539,
tslp000540,tslp000541,tslp000542,tslp000543,tslp000545,tslp000546,tslp000612,tslp000613,tslp000614,tslp000615,tslp000616,tslp000638,
tslp000648,tslp000685,tslp000690,tslp000691,tslp000692,tslp000696,tslp000697,tslp000708,tslp000710,tslp000724,tslp000726,tslp000727,
tslp000728,tslp000737,tslp000778,tslp000210,puppet2,btln000011,btln000063,btln000076,btln000090,btln000094,btln000104,btln000116,
btln000195,btln000206,btln000266,btln000270,btln000271,btln000282,btln000283,btln000355,btln000671,btln000938,btln000972,btln000976,
btln001030,btln001070,btln001085,btln001106,btln001166,btln001253,btln001306,btln001371,btln001448,btln001450,btln001455,btln001459,
btln001592,btln001595,btln001600,btln001604,tslp000020,tslp000022,tslp000023,tslp000240 {
  class {'::puppet_agent':
    package_version => '5.5.1',
    service_names   => ['puppet'],
    manage_repo     => false,
  }
}


#20180618 - LIDC - Puppet 5 Upgrade 
node ln98145,ln98146,ln98149,ln98150,ln98251,ln98254,ln98255,ln98257,ln98514,ln98554,ln98555,ln98560,ln98561,ln98605,ln98607,ln98781,
ln98782,ln98866,ln98867,ln99081,ln99167,lp97387,lp97408,lp97526,lp97611,lp97625,lp97663,lp97714,lp97716,lp97720,lp97729,lp97731,lp97757,
lp97781,lp97792,lp97812,lp98023,lp98033,lp98059,lp98060,lp98063,lp98083,lp98095,lp98106,lp98119,lp98138,lp98139,lp98152,lp98156,lp98159,
lp99273,lp99276,lp99412,lp99414,lp99416,lp99419,lp99441,lp99447,tslp000007,ln99044,ln99145,ln99146,ln99187,ln99188,ln98563,ln99077,ln99080,
ln99082,ln99101,ln99102,ln99103,ln99107,ln99108,ln99109,ln99111,ln99112,ln99113,ln99114,ln99120,ln99141,ln99142,ln99143,ln99144,ln99147,
ln99148,ln99149,ln99150,ln99151,ln99152,ln99154,ln99156,ln99157,ln99158,ln99160,ln99161,ln99162,ln99163,ln99164,ln99171,ln99179,ln99180,
ln99181,ln99185,ln99198,ln99199,ln99202,ln99203,ln99225,ln99226,ln99227,lp97031,lp97038,lp97039,lp97040,lp97041,lp97042,lp97068,lp97114,
lp97115,lp97116,lp97117,lp97118,lp97119,lp97123,lp97182,lp97200,lp97201,lp97202,lp97204,lp97205,lp97206,lp97207,lp97208,lp97295,lp97297,
lp97319,lp97321,lp97322,lp97327,lp97328,lp97330,lp97331,lp97332,lp97334,lp97335,lp97336,lp97337,lp97339,lp97386,lp97389,lp97390,lp97391,
lp97392,lp97393,lp97394,lp97396,lp97397,lp97398,lp97399,lp97402,lp97403,lp97407,lp97409,lp97410,lp97411,lp97412,lp97413,lp97414,lp97415,
lp97416,lp97417,lp97418,lp97421,lp97500,lp97501,lp97502,lp97503,lp97508,lp97509,lp97510,lp97511,lp97514,lp97515,lp97516,lp97517,lp97529,
lp97530,lp97532,lp97540,lp97541,lp97543,lp97544,lp97545,lp97546,lp97547,lp97548,lp97549,lp97550,lp97551,lp97552,lp97566,lp97577,lp97578,
lp97580,lp97581,lp97582,lp97583,lp97612,lp97614,lp97627,lp97628,lp97629,lp97632,lp97635,lp97648,lp97649,lp97661,lp97664,lp97665,lp97666,
lp97667,lp97678,lp97679,lp97697,lp97699,lp97700,lp97705,lp97706,lp97709,lp97710,lp97713,lp97717,lp97718,lp97719,lp97721,lp97722,lp97723,
lp97724,lp97725,lp97726,lp97727,lp97728,lp97730,lp97732,lp97737,lp97738,lp97739,lp97740,lp97741,lp97742,lp97744,lp97746,lp97747,lp97750,
lp97751,lp97754,lp97755,lp97756,lp97758,lp97768,lp97793,lp97798,lp97800,lp97801,lp97802,lp97803,lp97804,lp97805,lp97806,lp97811,lp97813,
lp97814,lp97815,lp97816,lp97817,lp97818,lp97819,lp97820,lp97821,lp97822,lp97825,lp97826,lp97829,lp97832,lp97840,lp97841,lp97842,lp97843,
lp97850,lp97851,lp97852,lp97853,lp97865,lp97884,lp97885,lp97887,lp97905,lp97913,lp97945,lp97946,lp97956,lp97957,lp97962,lp97963,lp97964,
lp97965,lp97966,lp97967,lp97968,lp97969,lp97970,lp97971,lp97972,lp97976,lp97977,lp97978,lp97979,lp97980,lp97981,lp97982,lp97983,lp98000,
lp98011,lp98012,lp98013,lp98014,lp98015,lp98016,lp98017,lp98018,lp98021,lp98022,lp98024,lp98025,lp98026,lp98027,lp98028,lp98029,lp98037,
lp98038,lp98039,lp98056,lp98057,lp98061,lp98062,lp98066,lp98067,lp98068,lp98069,lp98070,lp98071,lp98072,lp98073,lp98074,lp98075,lp98076,
lp98077,lp98078,lp98079,lp98080,lp98081,lp98082,lp98084,lp98090,lp98091,lp98096,lp98097,lp98098,lp98099,lp98105,lp98107,lp98108,lp98120,
lp98121,lp98122,lp98123,lp98124,lp98125,lp98126,lp98127,lp98128,lp98129,lp98135,lp98136,lp98137,lp98140,lp98141,lp98142,lp98143,lp98144,
lp98145,lp98146,lp98147,lp98148,lp98154,lp98155,lp98157,lp98158,lp98164,lp98165,lp98166,lp98167,lp98168,lp98174,lp98175,lp98176,lp98177,
lp98178,lp98179,lp98180,lp98181,lp98253,lp99049,lp99050,lp99051,lp99275,lp99277,lp99278,lp99279,lp99288,lp99289,lp99290,lp99291,lp99293,
lp99312,lp99313,lp99342,lp99343,lp99344,lp99345,lp99346,lp99347,lp99369,lp99370,lp99371,lp99372,lp99400,lp99401,lp99402,lp99403,lp99404,
lp99405,lp99411,lp99413,lp99415,lp99417,lp99418,lp99420,lp99421,lp99422,lp99423,lp99424,lp99425,lp99426,lp99440,lp99442,lp99443,lp99444,
lp99445,lp99446,lp99448,lp99449,lp99450,lp99451,lp99452,lp99453,lp99454,lp99455,lp99461,lp99462,lp99463,lp99464,lp99465,lp99466,lp99474,
lp99475,lp99476,lp99477,lp99508,lp99509,lp99510,lp99511,lp99512,lp99513,lp99514,lp99515,lp99516,lp99517,lp99518,lp99519,lp99520,lp99521,
lp99522,lp99523,lp99525,lp99526,lp99527,lp99528,lp99529,lp99531,lp99532,lp99538,lp99539,lp99540,lp99541,lp99542,lp99543,lp99544,lp99545,
lp99546,lp99547,lp99548,lp99549,lp99550,lp99551,lp99552,lp99553,lp99554,lp99555,lp99556,lp99557,lp99558,lp99559,lp99560,lp99562,ln98129,
ln98147,ln98256,ln98302,ln98313,ln98318,ln98324,ln98325,ln98814,ln98815,ln98816,ln98817,ln98818,ln98819,ln98820,ln98821,ln98822,ln98823,
ln98824,ln98825,ln98826,ln98827,ln98828,ln98829,ln98921,ln98936,ln99153,lp97120,lp97121,lp97122,lp97320,lp97338,lp97388,lp97454,lp97527,
lp97533,lp97542,lp97973,lp99055,lp99292,ln98319,ln99556,ln99557,lp97324,lp97181,lp99430,lp99431 {
  class {'::puppet_agent':
    package_version => '5.5.1',
    service_names   => ['puppet'],
    manage_repo     => false,
  }
}


#20180618 - Toll8,Marmac,VIDC,CONS,3030 - Puppet 5 Upgrade 
node ln98076,ln98276,ln98809,ln98831,ln99538,ln99539,ln99546,ln99547,ln99548,ln99550,ln99551,ln99552,ln99553,ln99554,ln99555,lp97179,
lp97180,lp97512,lp97518,lp97520,ln98275,ln98847,ln98889,ln98943,ln98944,ln98945,ln98946,lp98092,lp98094,lp97504,lp97896,lp98093,ln99039,
ln98012,ln98090,ln98093,ln98158,ln98176,ln98182,ln98426,ln98427,ln98438,ln98453,ln98480,ln98481,ln98487,ln98488,ln98495,ln98882,ln98884,
ln98888,ln99022,ln99210,ln99253,ln99509,ln99726,ln99797,ln99805,ln99806,ln99807,ln99809,ln99810,ln99811,lp97008,ln98020,ln98021,ln98170,
ln98260,ln98421,ln98423,ln98425,ln98428,ln98429,ln98430,ln98431,ln98432,ln98433,ln98435,ln98436,ln98437,ln98440,ln98441,ln98442,ln98443,
ln98444,ln98445,ln98446,ln98447,ln98448,ln98449,ln98450,ln98451,ln98456,ln98482,ln98490,ln98491,ln98494,ln98507,ln98508,ln98536,ln98537,
ln98538,ln98539,ln98541,ln98543,ln98581,ln98582,ln98583,ln98584,ln98585,ln98586,ln98623,ln98624,ln98846,ln98883,ln98885,ln98886,ln98949,
ln98950,ln99018,ln99019,ln99020,ln99021,ln99024,ln99025,ln99026,ln99027,ln99028,ln99030,ln99031,ln99084,ln99086,ln99087,ln99088,ln99089,
ln99090,ln99091,ln99092,ln99093,ln99124,ln99134,ln99208,ln99211,ln99212,ln99213,ln99214,ln99216,ln99218,ln99219,ln99220,ln99221,ln99222,
ln99223,ln99224,ln99249,ln99484,ln99485,ln99723,ln99725,ln99760,lp97365,lp97366,lp97367,lp97419,lp97606,lp99272,ln98175,ln98004,ln98091,
ln98092,lp99467,ln98454,ln98454,ln98452,ln98455,ln98455,ln98830,ln98954,ln98955,ln98956,ln98957,lp99485,lp99483,lp99484,ln99191,lp99435,
lp97572 {
  class {'::puppet_agent':
    package_version => '5.5.1',
    service_names   => ['puppet'],
    manage_repo     => false,
  }
}

# #20180614 - KIDC NP - Puppet 5 Upgrade 
# node btln000378,btln000379,btln000380,btln000381,btln000383,btln000384,btln000385,btln000386,btln000387,btln000389,btln000390,btln000391,
# btln000392,btln000393,btln000394,btln000395,btln000398,btln000399,btln000400,btln000401,btln000402,btln000403,btln000404,btln000405,btln000406,
# btln000407,btln000408,btln000409,btln000410,btln000411,btln000412,btln000413,btln000416,btln000417,btln000418,btln000419,btln000420,btln000421,
# btln000422,btln000423,btln000424,btln000426,btln000427,btln000428,btln000429,btln000430,btln000431,btln000432,btln000433,btln000435,btln000436,
# btln000437,btln000438,btln000439,btln000440,btln000441,btln000442,btln000443,btln000444,btln000445,btln000446,btln000447,btln000501,btln000502,
# btln000503,btln000504,btln000505,btln000510,btln000511,btln000518,btln000519,btln000525,btln000526,btln000532,btln000533,btln000537,btln000540,
# btln000542,btln000544,btln000545,btln000546,btln000547,btln000548,btln000549,btln000550,btln000551,btln000552,btln000553,btln000554,btln000558,
# btln000559,btln000560,btln000561,btln000585,btln000586,btln000587,btln000588,btln000589,btln000590,btln000591,btln000592,btln000593,btln000594,
# btln000595,btln000596,btln000597,btln000620,btln000621,btln000623,btln000624,btln000625,btln000626,btln000627,btln000628,btln000629,btln000631,
# btln000639,btln000640,btln000641,btln000642,btln000643,btln000644,btln000720,btln000721,btln000722,btln000723,btln000724,btln000725,btln000726,
# btln000733,btln000737,btln000738,btln000739,btln000740,btln000741,btln001153,btln001184,btln001236,btln001242,btln001243,btln001246,btln001247,
# btln001250,btln001251,btln001262,btln001263,btln001266,btln001271,btln001272,btln001273,btln001274,btln001275,btln001277,btln001278,btln001279,
# btln001280,btln001283,btln001308,btln001309,btln001311,btln001313,btln001367,btln001369,btln001370,btln001375,btln001377,btln001378,btln001379,
# btln001399,btln001400,btln001407,btln001408,btln001410,btln001419,btln001425,btln001426,btln001429,btln001430,btln001431,btln001432,btln001437,
# btln001438,btln001439,btln001440,btln001441,btln001442,btln001443,btln001444,btln001445,btln001474,btln001492,btln001493,btln001494,btln001495,
# btln001496,btln001497,btln001498,btln001516,btln001522,btln001569,btln002564,btln002565,btln002566,btln002567,btln002568,btln002569,btln002570,
# btln002571,btln002572,btln002573,btln002574,btln002575,btln002602,btln002603,btln002611,btln002612,btln002613,btln002614,btln002617,btln002618,
# btln002619,btln002620,btln002622,btln002623,btln002624,btln002625,btln002626,btln002627,btln002628,btln002686,btln002687,btln002688,btln002698,
# btln002702,btln002711,btln002712,btln002713,btln002714,btln002715,btln002716,btln002717,btln002718,btln002719,btln002720,btln002721,btln002722,
# btln002723,btln002724,btln002725,btln002726 {
#   class {'::puppet_agent':
#     package_version => '5.5.1',
#     service_names   => ['puppet'],
#     manage_repo     => false,
#   }
# }


# #20180614 - QIDC NP - Puppet 5 Upgrade 
# node btln000001,btln000002,btln001017,btln000005,btln000006,btln000009,btln000010,btln000012,btln000013,btln000014,btln000028,btln000029,
# btln000030,btln000031,btln000032,btln000033,btln000034,btln000035,btln000036,btln000037,btln000038,btln000039,btln000040,btln000041,btln000042,
# btln000043,btln000044,btln000045,btln000046,btln000047,btln000048,btln000049,btln000050,btln000051,btln000052,btln000053,btln000054,btln000055,
# btln000056,btln000057,btln000058,btln000059,btln000060,btln000064,btln000065,btln000066,btln000067,btln000068,btln000069,btln000070,btln000071,
# btln000072,btln000073,btln000074,btln000075,btln000077,btln000078,btln000079,btln000080,btln000081,btln000082,btln000083,btln000084,btln000085,
# btln000087,btln000088,btln000089,btln000091,btln000092,btln000093,btln000095,btln000096,btln000097,btln000098,btln000100,btln000101,btln000102,
# btln000103,btln000112,btln000113,btln000114,btln000115,btln000117,btln000118,btln000119,btln000120,btln000121,btln000122,btln000125,btln000136,
# btln000139,btln000140,btln000141,btln000142,btln000143,btln000144,btln000145,btln000146,btln000147,btln000148,btln000149,btln000150,btln000151,
# btln000153,btln000207,btln000260,btln000261,btln000262,btln000263,btln000264,btln000265,btln000267,btln000268,btln000269,btln000272,btln000273,
# btln000274,btln000275,btln000276,btln000277,btln000278,btln000279,btln000280,btln000281,btln000284,btln000285,btln000286,btln000287,btln000288,
# btln000289,btln000290,btln000291,btln000292,btln000293,btln000294,btln000295,btln000296,btln000297,btln000300,btln000301,btln000306,btln000310,
# btln000311,btln000312,btln000313,btln000314,btln000315,btln000316,btln000317,btln000318,btln000319,btln000320,btln000321,btln000323,btln000324,
# btln000325,btln000326,btln000327,btln000328,btln000329,btln000330,btln000331,btln000332,btln000333,btln000334,btln000337,btln000338,btln000339,
# btln000340,btln000341,btln000343,btln000348,btln000349,btln000350,btln000351,btln000353,btln000354,btln000356,btln000357,btln000360,btln000365,
# btln000366,btln000367,btln000368,btln000369,btln000370,btln000371,btln000372,btln000373,btln000374,btln000375,btln000376,btln000448,btln001396,
# btln000454,btln000457,btln001395,btln000463,btln000464,btln001524,btln002352,btln002351,btln002350,btln002341,btln002340,btln002339,btln002338,
# btln002337,btln002336,btln002326,btln002325,btln002324,btln002323,btln002322,btln002321,btln002320,btln002319,btln002305,btln002304,btln002303,
# btln002293,btln002282,btln002281,btln002280,btln002279,btln002278,btln002277,btln002276,btln002275,btln002274,btln002273,btln002272,btln002271,
# btln002181,btln002179,btln002178,btln002126,btln002125,btln002119,btln002118,btln002117,btln002116,btln002115,btln002112,btln002111,btln002110,
# btln002086,btln002085,btln002081,btln002080 {
#   class {'::puppet_agent':
#     package_version => '5.5.1',
#     service_names   => ['puppet'],
#     manage_repo     => false,
#   }
# }


# #20180614 - LIDC - Puppet 5 Upgrade 
# node ln97058,ln97059,ln97060,ln97061,ln97062,ln97063,ln97064,ln97901,ln97902,ln98094,ln98095,ln98120,ln98121,ln98122,ln98123,ln98124,ln98125,
# ln98126,ln98127,ln98128,ln98130,ln98131,ln98132,ln98133,ln98134,ln98135,ln98138,ln98139,ln98141,ln98142,ln98143,ln98144,ln98148,ln98151,ln98152,
# ln98153,ln98154,ln98155,ln98156,ln98157,ln98252,ln98253,ln98279,ln98280,ln98281,ln98282,ln98300,ln98301,ln98310,ln98311,ln98312,ln98314,ln98315,
# ln98316,ln98317,ln98320,ln98321,ln98322,ln98323,ln98496,ln98497,ln98505,ln98509,ln98510,ln98511,ln98512,ln98513,ln98515,ln98516,ln98517,ln98518,
# ln98519,ln98520,ln98546,ln98550,ln98551,ln98552,ln98553,ln98556,ln98557,ln98558,ln98559,ln98562,ln98570,ln98571,ln98573,ln98574,ln98577,ln98588,
# ln98590,ln98591,ln98592,ln98593,ln98594,ln98595,ln98596,ln98597,ln98598,ln98606,ln98608,ln98609,ln98610,ln98611,ln98612,ln98620,ln98621,ln98622,
# ln98632,ln98633,ln98704,ln98760,ln98764,ln98769,ln98770,ln98775,ln98776,ln98777,ln98778,ln98779,ln98780,ln98783,ln98784,ln98785,ln98787,ln98788,
# ln98802,ln98803,ln98804,ln98805,ln98806,ln98807,ln98810,ln98811,ln98812,ln98813,ln98832,ln98833,ln98834,ln98835,ln98840,ln98841,ln98842,ln98843,
# ln98844,ln98845,ln98848,ln98849,ln98851,ln98857,ln98858,ln98873,ln98874,ln98875,ln98878,ln98879,ln98891,ln98909,ln98925,ln98926,ln98927,ln98933,
# ln98934,ln98935,ln98937,ln98938,ln98939,ln98940,ln98941,ln98942,ln98951,ln98952,ln98953,ln98958,ln98959,ln98960,ln98961,ln98964,ln98965,ln98982,
# ln98985,ln98986,ln99003,ln99004,ln99009,ln99010,ln99011,ln99012,ln99013,ln99014,ln99015,ln99016,ln99017,ln99032,ln99033,ln99034,ln99035,ln99036,
# ln99042,ln99052,ln99054,ln99369,ln99368,ln99367,ln99366,ln99365,ln99357,ln99356,ln99355,ln99354,ln99353,ln99352,ln99349,ln99348,ln99347,ln99346,
# ln99345,ln99344,ln99298,ln99297,ln99296,ln99295,ln99294,ln99293,ln99292,ln99291,ln99290,ln99289,ln99288,ln99286,ln99285,ln99284,ln99283,ln99282,
# ln99281,ln99280,ln99279,ln99270,ln99269,ln99268,ln99254,ln99247,ln99246,ln99245,ln99244,ln99243,ln99242,ln99241,ln99240,ln99239,ln99238,ln99237,
# ln99236,ln99235,ln99234,ln99233,ln99232,ln99231,ln99230,ln99229,ln99228 {
#   class {'::puppet_agent':
#     package_version => '5.5.1',
#     service_names   => ['puppet'],
#     manage_repo     => false,
#   }
# }


# #20180614 - Toll8 - Puppet 5 Upgrade 
# node abapp216,lp97007,lp97008,lp97013,lp97024,lp97025,lp97026,lp97027,lp97029,lp97030,lp97083,lp97084,lp97085,lp97086,lp97087,lp97088,lp97089,
# lp97090,lp97091,lp97092,lp97093,lp97094,lp97095,lp97096,lp97097,lp97098,lp97099,lp97100,lp97101,lp97102,lp97103,lp97104,lp97105,lp97106,lp97302,
# lp97303,lp97313,lp97314,lp97316,lp97317,lp97318,lp97323,lp97368,lp97374,lp97375,lp97377,lp97378,lp97379,lp97382,lp97383,lp97384,lp97400,lp97401,
# lp97404,lp97405,lp97406,lp97420,lp97427,lp97428,lp97429,lp97430,lp97431,lp97435,lp97436,lp97437,lp97438,lp97439,lp97441,lp97442,lp97443,lp97444,
# lp97445,lp97446,lp97447,lp97448,lp97449,lp97450,lp97451,lp97452,lp97453,lp97505,lp97519,lp97521,lp97573,lp97574,lp97600,lp97605,lp97610,lp97640,
# lp97641,lp97650,lp97651,lp97684,lp97703,lp97704,lp97735,lp97736,lp97797,lp97807,lp97808,lp97809,lp97810,lp97830,lp97834,lp97835,lp97871,lp97872,
# lp97873,lp97874,lp97899,lp97900,lp97906,lp97907,lp97908,lp97909,lp97914,lp97919,lp97923,lp97924,lp97925,lp97926,lp97939,lp97947,lp97948,lp97951,
# lp97961,lp98032,lp98045,lp98046,lp98047,lp98048,lp98049,lp98051,lp98052,lp98053,lp98054,lp98055,lp98087,lp98088,lp98089,lp98101,lp98134,lp98151,
# lp98160,lp98161,lp98162,lp98163,lp98171,lp98172,lp98173,lp98188,lp98900,lp98901,lp98902,lp99052,lp99061,lp99062,lp99063,lp99064,lp99065,lp99066,
# lp99314,lp99315,lp99316,lp99317,lp99318,lp99319,lp99320,lp99380,lp99410,lp99427,lp99428,lp99429,lp99468,lp99469,lp99470,lp99471,lp99472,lp99473,
# lp99478,lp99533,lp99534,lp99561,lp99602,lp99603,lp99611,qadev115,xp30053,xp30054,xp30082 {
#   class {'::puppet_agent':
#     package_version => '5.5.1',
#     service_names   => ['puppet'],
#     manage_repo     => false,
#   }
# }

# #20180614 - Marmac, Len Werry, Mainwire - Puppet 5 Upgrade 
# node ln98761,ln98892,ln98893,lp97608,lp97927,lp97928,lp98182,lp98183,lp98184,lp98185,lp98186,lp99480,lp99563,lp99564,lp99565,lp99566,lp99567,
# lp99568,lp99569,lp99570,lp99571,lp99572,lp99573,lp99574,lp99575,lp99576,lp99577,lp99578,lp99579,lp99580,lp99581,lp99582,lp99583,lp99584,lp99585,
# lp99586,lp99587,lp99588,lp99589,lp99590,lp99591,lp99592,lp99593,lp99594,lp99595,lp99596,lp99597,lp99598,lp99599,lp99600,lp99601,pqmgt008,tqawas03,
# tqpjobs6,tqpldap11,tqpldap12,tqpwas08,tqpwas09,tqpwas12,tqpwas13,tqtwas01,tqtwas02 {
#   class {'::puppet_agent':
#     package_version => '5.5.1',
#     service_names   => ['puppet'],
#     manage_repo     => false,
#   }
# }



#20180613 - KIDC NP - Puppet 5 Upgrade 
# node btln007444,btln007432,btln007423,btln007422,btln007421,btln007409,btln007398,btln007397,btln007349,btln007337,btln007336,
# btln007335,btln007334,btln007333,btln007332,btln007331,btln007330,btln007329,btln007328,btln007327,btln007326,btln007325,btln007324,
# btln007323,btln007322,btln007321,btln007320,btln007319,btln007318,btln007317,btln007316,btln007315,btln007314,btln007313,btln007312,
# btln007311,btln007301,btln007300,btln007299,btln007298,btln007297,btln007296,btln007295,btln007294,btln007293,btln007292,btln007291,
# btln007246,btln007245,btln007244,btln007243,btln007242,btln007241,btln007240,btln007239,btln007238,btln007237,btln007236,btln007235,
# btln007234,btln007233,btln007232,btln007231,btln007229,btln007228,btln007227,btln007226,btln007225,btln007224,btln007223,btln007177,
# btln007176,btln007175,btln007174,btln007173,btln007172,btln007171,btln007170,btln007169,btln007168,btln007167,btln007166,btln007165,
# btln007164,btln007152,btln007151,btln007149,btln007148,btln007147,btln007146,btln007142,btln007141,btln007140,btln007139,btln007138,
# btln007107,btln007106,btln007105,btln007095,btln007094,btln007093,btln007092,btln007069,btln007068,btln007067,btln007066,btln007065,
# btln007059,btln007058,btln007057,btln007056,btln007055,btln007005,btln007004,btln007003,btln007002,btln007001,btln007000,btln003011,
# btln003003,btln002993,btln002992,btln002991,btln002968,btln002967,btln002966,btln002965,btln002964,btln002920,btln002912,btln002911,
# btln002900,btln002899,btln002898,btln002896,btln002895,btln002890,btln002878,btln002877,btln002876,btln002875,btln002874,btln002873,
# btln002872,btln002871,btln002870,btln002869,btln002868,btln002867,btln002866,btln002865,btln002864,btln002863,btln002862,btln002861,
# btln002860,btln002859,btln002858,btln002857,btln002856,btln002855,btln002854,btln002853,btln002831,btln002830,btln002829,btln002821,
# btln002820,btln002819,btln002818,btln002816,btln002815,btln002802,btln002801,btln002797,btln002796,btln002791,btln002790,btln002786,
# btln002784,btln002776,btln002775,btln002774,btln002773,btln002772,btln002771,btln002752,btln002751,btln002750,btln002749,btln002748,
# btln002747,btln002746,btln002745,btln002744,btln002743,btln002742,btln002741,btln002728,btln002727 {
#   class {'::puppet_agent':
#     package_version => '5.5.1',
#     service_names   => ['puppet'],
#     manage_repo     => false,
#   }
# }


#20180613 - QIDC NP - Puppet 5 Upgrade
# node btln007443,btln007442,btln007441,btln007440,btln007439,btln007438,btln007437,btln007436,btln007435,btln007417,btln007416,
# btln007415,btln007414,btln007413,btln007412,btln007411,btln007410,btln007408,btln007407,btln007406,btln007405,btln007404,btln007403,
# btln007402,btln007401,btln007396,btln007395,btln007394,btln007393,btln007392,btln007391,btln007390,btln007389,btln007388,btln007387,
# btln007386,btln007379,btln007378,btln007377,btln007376,btln007375,btln007374,btln007373,btln007372,btln007308,btln007307,btln007306,
# btln007305,btln007270,btln007220,btln007186,btln007185,btln007184,btln007181,btln007157,btln007156,btln007155,btln007154,btln007153,
# btln007130,btln007129,btln007128,btln007112,btln007111,btln007104,btln007103,btln007102,btln007101,btln007100,btln007099,btln007098,
# btln007097,btln007096,btln007085,btln007076,btln007075,btln007074,btln007073,btln007072,btln007071,btln007053,btln007052,btln007051,
# btln007050,btln007049,btln007048,btln007043,btln007042,btln007032,btln007031,btln003021,btln003020,btln003019,btln003018,btln003002,
# btln003001,btln002985,btln002976,btln002975,btln002974,btln002918,btln002914,btln002913,btln002901,btln002839,btln002817,btln002708,
# btln002707,btln002706,btln002705,btln002704,btln002703,btln002701,btln002695,btln002694,btln002693,btln002692,btln002691,btln002690,
# btln002689,btln002669,btln002667,btln002666,btln002665,btln002664,btln002663,btln002662,btln002636,btln002635,btln002634,btln002633,
# btln002632,btln002631,btln002630,btln002629,btln002616,btln002615,btln002592,btln002591,btln002590,btln002589,btln002588,btln002587,
# btln002586,btln002585,btln002584,btln002583,btln002582,btln002581,btln002580,btln002579,btln002578,btln002577,btln002561,btln002559,
# btln002552,btln002551,btln002550,btln002549,btln002548,btln002539,btln002538,btln002537,btln002536,btln002523,btln002519,btln002518,
# btln002517,btln002516,btln002489,btln002472,btln002471,btln002470,btln002468,btln002446,btln002445,btln002444,btln002443,btln002442,
# btln002441,btln002440,btln002439,btln002434,btln002433,btln002432,btln002429,btln002428,btln002427,btln002426,btln002421,btln002420,
# btln002419,btln002418,btln002417,btln002416,btln002415,btln002367,btln002363,btln002362,btln002353 {
#   class {'::puppet_agent':
#     package_version => '5.5.1',
#     service_names   => ['puppet'],
#     manage_repo     => false,
#   }
# }

#20180613 - LIDC NP - Puppet 5 Upgrade
# node ln99795,ln99794,ln99793,ln99792,ln99791,ln99790,ln99789,ln99788,ln99787,ln99786,ln99785,ln99784,ln99783,ln99782,ln99781,ln99780,
# ln99779,ln99778,ln99777,ln99776,ln99775,ln99774,ln99773,ln99772,ln99771,ln99770,ln99769,ln99768,ln99754,ln99753,ln99752,ln99751,ln99750,
# ln99749,ln99748,ln99747,ln99746,ln99745,ln99744,ln99743,ln99742,ln99741,ln99740,ln99739,ln99731,ln99730,ln99722,ln99721,ln99720,ln99719,
# ln99718,ln99717,ln99716,ln99715,ln99714,ln99713,ln99712,ln99711,ln99710,ln99709,ln99708,ln99707,ln99706,ln99705,ln99704,ln99703,ln99702,
# ln99701,ln99697,ln99696,ln99695,ln99694,ln99693,ln99692,ln99691,ln99690,ln99689,ln99688,ln99687,ln99686,ln99685,ln99684,ln99683,ln99682,
# ln99681,ln99680,ln99679,ln99678,ln99677,ln99676,ln99675,ln99674,ln99673,ln99672,ln99671,ln99670,ln99669,ln99668,ln99667,ln99666,ln99665,
# ln99664,ln99663,ln99662,ln99649,ln99648,ln99647,ln99646,ln99645,ln99644,ln99643,ln99642,ln99641,ln99640,ln99639,ln99638,ln99637,ln99636,
# ln99635,ln99634,ln99633,ln99632,ln99631,ln99630,ln99629,ln99628,ln99627,ln99624,ln99623,ln99622,ln99621,ln99619,ln99618,ln99617,ln99616,
# ln99615,ln99614,ln99613,ln99609,ln99608,ln99607,ln99606,ln99605,ln99604,ln99603,ln99602,ln99587,ln99586,ln99585,ln99584,ln99583,ln99582,
# ln99581,ln99580,ln99579,ln99578,ln99563,ln99562,ln99561,ln99560,ln99559,ln99533,ln99532,ln99531,ln99530,ln99529,ln99528,ln99527,ln99526,
# ln99525,ln99524,ln99521,ln99520,ln99519,ln99518,ln99517,ln99516,ln99515,ln99514,ln99512,ln99511,ln99436,ln99435,ln99433,ln99432,ln99394,
# ln99389,ln99388,ln99387,ln99386,ln99385,ln99378,ln99377,ln99376,ln99375,ln99374,ln99373,ln99372,ln99371,ln99370 {
#   class {'::puppet_agent':
#     package_version => '5.5.1',
#     service_names   => ['puppet'],
#     manage_repo     => false,
#   }
# }

#20180613 - Toll8 NP - Puppet 5 Upgrade
# node ln98007,ln98022,ln98057,ln98058,ln98059,ln98070,ln98071,ln98072,ln98073,ln98074,ln98075,ln98077,ln98080,ln98081,ln98082,ln98087,
# ln98088,ln98089,ln98136,ln98137,ln98161,ln98163,ln98178,ln98202,ln98203,ln98204,ln98420,ln98422,ln98424,ln98434,ln98457,ln98458,ln98459,
# ln98484,ln98486,ln98489,ln98534,ln98535,ln98540,ln98542,ln98587,ln98615,ln98625,ln98750,ln98751,ln98752,ln98753,ln98754,ln98755,ln98756,
# ln98757,ln98759,ln98789,ln98790,ln98808,ln98881,ln98887,ln98912,ln98967,ln98968,ln98973,ln98974,ln98996,ln98998,ln99000,ln99001,ln99002,
# ln99023,ln99029,ln99038,ln99085,ln99116,ln99122,ln99123,ln99125,ln99135,ln99209,ln99215,ln99217,ln99266,ln99272,ln99380,ln99381,ln99382,
# ln99383,ln99406,ln99407,ln99506,ln99507,ln99508,ln99510,ln99543,ln99544,ln99545,ln99610,ln99611,ln99612,ln99698,ln99699,ln99724,ln99734,
# ln99735,ln99761,ln99762,ln99763,ln99764,ln99765,ln99766,ln99767,ln99800,ln99801,ln99804,ln98008,ln98078,ln98200,ln98201,ln98613,ln98614,
# ln98616,ln98617,ln98618,ln98749 {
#   class {'::puppet_agent':
#     package_version => '5.5.1',
#     service_names   => ['puppet'],
#     manage_repo     => false,
#   }
# }

