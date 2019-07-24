node default {

# TELUS base profile to be included for all Linux and Windows machines
  include profile::pr_base

}

# First prod push of patrol_ROFS
#node lp97324,lp99480,lp99679,lp99597,lp99573,lp99563,lp99601,lp99580,lp99564,lp98184,lp99598,lp99574,lp99579,lp99578,lp99568,lp99589,lp99567,lp99585,lp99600,lp99587,lp99575,lp99596,lp99593,lp99595,lp99594,lp99584,lp98182,lp99577,lp99710,lp99591,lp98183,lp99581,lp98185,lp99565,lp99572,lp99583,lp99435,lp99571,lp99599,lp99588,lp99592,lp99582,lp99590,lp99576,lp99566,lp99586,lp99570,lp99569,lp98186,lp97927,lp97928,tqpldap12,tqpjobs6,tqpldap11,tqpwas08,tqpwas09,lp97574,lp97024,lp98052,lp97097,lp97907,lp98045,lp97095,lp97027,lp98051,lp97450,lp97088,lp99608,lp97573,lp99317,lp97086,lp98055,lp97092,lp97008,lp97300,lp99320,lp97094,lp97084,lp97377,lp97098,lp97908,lp99472,lp97831,lp97428,lp97442,lp97447,lp97427,lp99607,lp99609,lp97090,lp97954,lp97443,lp97453,lp97091,lp99467,lp97301,lp99468,lp97451,lp97446,lp97430,lp97922,lp97013,lp98048,lp97441,lp99378,xp30082,lp97431,lp98086,lp97429,lp99469,lp97444,lp99606,lp99602,lp97085,lp97906,lp97030,lp97420,lp97449,lp97026,lp97452,xp30054,lp97087,lp97106,lp98049,lp98047,lp97025,lp99319,lp97448,lp97093,lp99471,lp98053,lp99470,lp99410,lp97096,lp97083,lp99473,lp97926,lp97445,lp98046,lp97909,lp98054,lp99318,lp97007,lp97100,lp97089,lp97102,tslp000566,btlp002459,tslp000358,btlp002405,btlp000354,btlp001447,tslp000565,btlp000884,btlp001988,btlp006078,btlp002182,btlp002202,btlp003156,btlp001746,btlp000365,btlp001965,btlp002431,btlp006158,btlp001738,btlp002077,btlp006569,tslp000432,btlp000413,btlp001544,btlp000942,btlp002200,btlp002203,btlp000499,tslp000568,tslp000096,tslp000087,btlp001734,btlp002458,btlp000388,btlp000828,btlp006080,btlp002183,tslp000290,tslp000564,btlp001714,btlp001869,btlp001207,btlp000411,btlp000734,btlp000391,btlp001477,btlp002300,btlp000757,btlp000758,btlp000301,btlp001983,tslp000899,btlp001969,btlp002302,btlp000750,tslp000572,tslp000657,btlp000349,btlp001321,btlp001015,btlp001247,btlp001317,btlp000357,btlp000355,btlp001376,btlp001248,tslp000090,btlp001072,btlp001545,btlp002596,btlp000253,btlp006224,btlp000943,btlp003103,btlp001352,btlp001677,btlp006570,btlp002785,btlp001947,tslp000095,btlp002079,btlp001736,btlp001948,btlp002156,btlp001989,btlp002193,btlp002549,tslp000743,btlp000390,btlp001377,btlp001985,btlp001733,btlp001962,btlp006219,btlp002299,tslp000522,btlp000495,btlp002144,tslp000571,btlp001730,btlp002155,btlp000392,btlp002096,btlp006168,btlp006574,btlp000257,btlp001979,btlp001928,btlp001967,tslp000377,btlp001750,btlp001953,btlp000822,btlp002564,btlp001197,btlp003101,btlp000761,tslp000407,btlp000496,btlp002640,btlp001060,tslp000357,btlp001283,btlp002404,btlp001478,btlp001412,btlp002140,btlp001731,btlp001942,btlp001461,btlp006070,btlp000823,btlp000871,btlp006166,btlp001459,btlp000261,btlp000825,btlp002181,btlp001982,btlp002449,tslp000570,btlp001016,btlp002067,btlp003178,btlp006568,btlp001992,tslp000408,tslp000053,btlp006307,btlp001975,tslp000575,tslp000673,btlp001205,btlp000887,btlp002294,btlp001018,btlp002184,btlp001830,btlp001373,btlp000941,btlp001956,btlp001921,tslp000091,btlp006005,btlp006072,btlp002165,tslp000744,btlp001462,tslp000274,btlp000873,btlp000759,btlp000348,btlp006062,btlp002784,btlp001870,tslp000050,btlp001963,btlp001351,btlp006311,tslp000058,btlp002295,btlp001443,tslp000573,btlp000327,btlp000386,btlp001071,btlp001741,tslp000289,tslp000421,btlp001582,btlp000821,btlp001250,btln001828,btlp001753,btlp000259,btlp000863,btlp001834,tslp000356,btlp002076,btlp002141,tslp000524,btlp001440,btlp001451,btlp001249,btlp006571,btlp006277,btlp000079,btlp001760,btlp002209,btlp001764,btlp000571,btlp002453,btlp001908,btlp000055,btlp006343,btlp001732,btlp000808,btlp000247,btlp002271,btlp001294,btlp000203,tslp000444,btlp006085,btlp000093,btlp000151,btlp006344,btlp000503,btlp000059,btlp000170,tslp000509,btlp000043,btlp002637,btlp001386,btlp000091,btlp001194,btlp001766,btlp000035,tslp000169,btlp000779,btlp001231,btlp000744,btlp000573,btlp002118,btlp001258,btlp000548,btlp000670,btlp000970,btlp002226,btlp000177,btlp002311,btlp006115,btln001372,btlp002231,btlp002210,btlp000765,btlp000184,btlp003153,btlp001452,btlp002566,btlp000630,tslp000535,btlp000947,btlp000628,btlp002317,btlp001435,btlp000207,tslp000410,btlp001765,btlp001917,btlp000087,btlp000033,tslp000212,btlp006105,btlp002400,tslp000727,tslp000027,btlp002690,btlp001761,btlp001471,btlp006248,btlp006350,btlp001078,btlp006364,tslp000412,btlp000826,btlp006157,btlp000909,tslp000434,tslp000265,btln001614,btlp002312,btlp006108,btlp000447,btlp001425,btlp006095,btlp001758,btlp000502,btln001617,tslp000446,tslp000046,btlp001431,tslp000238,btlp000867,tslp000264,tslp000438,btlp001079,btlp002227,btlp006363,btlp003127,btlp000913,btlp000084,btlp001421,btlp002208,btlp001426,btlp006319,btlp002630,btlp000733,btlp001039,btlp000216,btlp000959,btlp001900,btln001616,btlp001270,btlp001578,btlp000004,tslp000268,btlp002206,btlp006288,btlp000176,btlp000086,btlp000946,btlp000047,btlp006271,btlp000215,btlp006171,btlp000595,btlp001916,btlp006297,btlp000627,btlp006566,btlp000579,tslp000507,btlp006031,btlp001311,btlp001237,btlp000617,btlp006139,btlp001254,btlp002524,btlp002050,btlp006084,btlp001920,btlp001420,btlp000969,btlp001483,btlp006097,btlp006102,btlp001580,btlp000764,btlp000908,btlp002527,btlp000150,tslp000536,btlp000229,btlp006367,btlp000631,tslp000213,btlp000901,btlp000246,btlp000078,btlp000729,tslp000538,btlp006145,btlp002523,tslp000537,tslp000266,btlp003146,btlp002315,btlp001400,btlp006365,btlp000169,btlp001429,btlp000960,btlp001769,tslp000728,btlp000042,tslp000020,btlp006036,btlp006061,btlp002224,btlp001710,btlp001577,btlp002628,btlp000728,btlp000804,btlp000171,btlp000633,btlp000266,btlp001054,btlp000225,btlp006287,btlp006266,tslp000237,btlp000094,btlp000179,btlp003152,btlp001325,lp99420,lp97792,lp99446,lp99461,lp99539,lp99519,lp99405,lp99369,lp97339,lp98021,lp97540,lp99370,lp97038,lp97412,lp98942,lp98954,lp97806,lp97945,lp97850,lp98066,lp97709,lp98012,lp98936,lp98940,lp97120,lp97389,lp99511,lp99423,lp98934,lp97612,lp97548,lp98963,lp99448,lp98906,lp97769,lp97771,lp99443,lp99552,lp98950,lp98178,lp97738,lp98078,lp98106,lp97410,lp99411,lp99291,lp98143,lp97885,lp97182,lp97730,lp99682,lp97322,lp97628,lp97297,lp97408,lp98014,lp97202,lp97725,lp97208,lp97581,lp98159,lp98930,lp98141,lp99278,lp99516,lp97337,lp99414,lp99344,lp97819,lp99695,lp97721,lp98073,lp97551,lp97979,lp98027,lp98949,lp97335,lp98017,lp99556,lp97803,lp98932,lp97205,lp99293,lp98136,lp97976,lp97399,lp98989,lp98921,lp97386,lp97964,ln98515,lp97577,lp98063,lp98948,lp98084,lp98077,lp99508,lp98964,lp99450,lp98146,lp99562,lp98099,lp97851,lp98126,lp97731,lp97407,lp97533,lp99553,lp97416,lp99529,lp97800,lp98069,lp97821,lp98015,lp99452,lp97756,lp97722,lp99694,lp99426,lp98962,lp98922,lp98120,lp98076,lp97546,lp98154,lp99415,lp97121,lp97114,lp97417,lp99517,lp99342,lp99416,lp99526,lp98025,lp99343,lp97750,lp99455,lp97042,lp97751,lp99509,lp98913,lp98071,lp98952,lp98914,lp97509,lp98075,lp98918,lp98953,lp98122,lp97331,lp97744,lp97983,lp98253,lp99462,lp99463,lp98057,lp98919,lp97402,lp97729,lp97968,lp98929,lp99279,lp99289,lp97390,lp97514,lp99419,lp97122,lp98181,lp99417,lp97547,lp97825,lp99418,lp97530,lp97413,lp98080,lp97501,lp97529,lp98142,lp98912,lp99292,lp97957,lp97319,lp98941,lp97813,ln98514,lp99542,lp99465,lp98108,lp97207,lp97754,lp97527,lp97515,lp97884,lp97723,lp99290,lp99451,lp97393,lp97747,lp97962,lp98959,lp97421,lp99532,lp97741,lp98960,lp98951
#{
#  class { 'role::rl_patrol_rofs': }
#}

# Second prod push of patrol_ROFS
node btlp003155,btlp001252,btlp001923,btlp006306,btlp002061,btlp000313,btlp002782,btlp000255,btlp001957,btlp001973,btlp000416,btlp000810,tslp000633,btlp002298,btlp006221,btlp000820,btlp002613,btlp001474,btlp001934,btlp002153,btlp001941,btlp001737,btlp006220,tslp000098,btlp002099,btlp001371,tslp000373,btlp000262,btlp001417,tslp000088,btlp001938,btlp002605,btlp001960,btlp001993,btlp006309,btlp001922,btlp000753,btlp001935,btlp002550,btlp001292,btlp000254,tslp000355,btlp001329,btlp001980,btlp000395,tslp000299,btlp001318,btlp001990,btlp001475,btlp000260,btlp006165,tslp000251,btlp001978,btlp001328,btlp001063,btlp006278,btlp006067,btlp001379,btlp001968,btlp000371,btlp001246,tslp000363,btlp000256,tslp000659,btlp001378,btlp003179,btlp006308,btlp000302,btlp002301,btlp002066,btlp002074,btlp002551,btlp001064,btlp002073,btlp002214,tslp000085,btlp001445,btlp001966,btlp001061,btlp000393,btlp000870,btlp001949,tslp000298,tslp000574,btlp000333,btlp002296,btlp001827,btlp000760,btlp001450,btlp000418,btlp001751,btlp001987,btlp006000,btlp001320,btlp001958,btlp003104,btlp001740,btlp000944,btlp001974,btlp001439,btlp006001,tslp000097,btlp000735,btlp002166,tslp000669,btlp000749,btlp000498,tslp000051,btlp000888,btlp002154,btlp002065,btlp002448,btlp002151,btlp001752,btlp002614,btlp001715,btlp000347,btlp000258,btlp000334,btlp000497,btlp001380,btlp001927,btlp002201,btlp006071,btlp001473,btlp000872,btlp002632,tslp000526,btlp006573,btlp000372,btlp001416,btlp001446,btlp001986,btlp001327,btlp001961,btlp001375,btlp001748,btlp000351,btlp000412,btlp006314,btlp001059,btlp006170,tslp000362,btlp006063,btlp001372,btlp001743,btlp002102,btlp006065,btlp000889,btlp000335,btlp001458,btlp001436,btlp000385,btlp001955,btlp001326,btlp006003,btlp000346,tslp000094,btlp002075,btlp002297,btlp006567,btlp001480,tslp000563,tslp000523,btlp001202,tslp000674,tslp000052,tslp000092,btlp001972,btlp000862,btlp001931,btlp000414,btlp002430,tslp000224,btlp001944,btlp001981,btlp000419,btlp000886,btlp001984,btlp002191,btlp001971,btlp000754,btlp001833,btlp001199,btlp002190,btlp000755,btlp002540,btlp000332,btlp001871,tslp000252,btlp001976,btlp001345,btlp001943,btlp001414,btlp002304,btlp001744,btlp000263,btlp002603,btlp000356,btlp001749,btlp001201,btlp000860,btlp002189,btlp001932,btlp002142,lp98187,lp97517,lp98096,lp98095,lp97541,lp99466,lp99548,lp99424,lp99547,lp98018,lp99449,lp99680,lp99558,lp97755,lp97394,lp97334,lp97508,lp98127,lp99549,lp97772,lp98135,lp97853,lp98148,lp97805,lp99447,lp98062,lp97123,lp98174,lp97117,lp98091,lp99276,lp99421,lp98081,lp98072,lp98179,lp97720,lp97781,lp99445,lp99441,lp98074,lp98105,lp98938,lp97550,lp98928,lp98905,lp98944,lp99681,lp97549,lp97544,lp97963,lp99709,lp97039,lp98098,lp98931,lp97726,lp98156,ln98858,lp97295,lp97578,lp97635,lp97411,lp98123,lp98946,lp97543,lp98152,lp98000,lp99557,lp98024,lp98068,lp98961,lp98029,lp97977,lp99403,lp97700,lp98067,lp97740,lp97981,lp97718,lp98911,lp99413,lp99312,lp99442,lp97965,lp97811,lp97068,lp98916,lp99347,lp97115,lp97414,lp98943,lp97798,ln98857,lp98966,lp98082,lp97716,lp98145,lp98083,lp99474,lp97503,lp98079,lp97415,lp98956,lp98121,lp99551,lp98958,lp98139,lp97409,lp97739,lp99288,lp97982,lp99412,lp97332,lp97632,lp97697,lp98177,lp98937,lp98175,lp97500,lp97200,lp97967,lp97727,lp98022,lp98155,lp98119,lp97330,lp97815,lp97980,lp98947,lp97956,lp98908,lp97566,lp98939,lp97320,lp98920,lp97978,lp99425,lp97887,lp98033,lp99444,lp97552,lp97946,lp97116,lp97822,lp99546,lp99464,lp97812,lp98910,lp98924,lp97611,lp99273,lp97398,lp97387,lp97206,lp97966,lp99402,lp97678,lp97201,lp97403,lp98107,lp99544,lp98935,lp99531,lp98137,lp99527,lp99554,lp97969,lp99453,lp98026,lp98907,lp97392,lp97719,lp97321,lp99422,lp99400,lp99708,lp98140,lp98915,lp98917,lp97040,lp97820,lp97742,lp98158,lp98957,lp98056,lp97119,lp98147,lp97829,lp97679,lp98925,lp97502,lp99550,lp98023,lp99346,lp97826,lp97746,lp97802,lp98097,lp98144,lp99475,lp98016,lp97905,btlp000995,btlp002136,btlp001238,tslp000370,btlp000574,btlp006144,btlp002115,btlp002525,btlp006112,btlp001427,btlp006132,btlp006362,tslp000409,btlp002567,btlp006034,btlp002310,btlp000620,btlp002638,tslp000511,tslp000423,btlp001269,btlp006581,btlp001038,btlp001759,btlp000580,btlp006172,btlp006140,btlp002528,btlp000743,btlp000144,btlp002207,btlp002135,tslp000442,tslp000510,btlp002308,btlp000141,btlp000652,btlp002401,btlp000210,btlp000572,btlp000057,btlp001309,btlp006585,btlp002689,tslp000029,btlp000148,btlp002629,btlp006173,tslp000119,btlp000621,btlp002146,btlp006372,btlp000618,btlp006348,btlp001423,btlp000044,btlp000146,btlp002229,btlp002272,btlp001711,btlp002232,btlp000053,btlp006100,btlp002168,tslp000746,btlp000152,tslp000378,btlp001312,btlp002636,tslp000239,btlp000050,btlp006098,btlp006083,btlp001300,tslp000424,btlp000824,btlp002626,tslp000440,btlp006347,tslp000236,btlp006126,btlp002274,btlp001293,btlp001909,btlp002316,tslp000435,btlp001267,btlp000578,btlp000910,tslp000273,btlp006366,btlp001023,btlp000250,btlp001239,btlp006582,btlp006069,btlp006584,btlp002225,btlp006110,btlp000912,btlp000619,btlp006032,btlp000015,btlp001159,btlp001434,btlp001775,btlp000684,btlp000224,btlp000270,btlp006246,btlp003147,btlp000683,btlp002597,btlp006086,btlp001301,btlp001422,tslp000267,tslp000411,btlp001240,btlp000915,btlp002116,btlp006109,tslp000422,btlp000020,btlp006346,btlp000948,btlp000060,btlp000061,btlp000784,btlp001037,btlp006035,btlp000805,tslp000375,btlp000547,btlp006082,btlp006127,btlp000730,btlp000218,btlp000769,btlp000204,btlp000806,btlp001433,btlp000789,btlp002313,btlp001387,btlp001762,btlp006251,btlp000149,btlp000082,tslp000023,btlp000153,btlp000205,btlp002691,btlp002526,tslp000235,btlp000166,btlp000967,btlp000056,tslp000263,btlp000567,btlp001772,btlp000864,btlp006247,btlp006099,btlp000669,btlp001681,btlp006369,btlp002173,tslp000271,btlp000865,btlp000965,btlp000501,btlp001777,tslp000013,btlp000916,btlp000051,btlp001683,btlp001255,btlp006250,btlp001055,tslp000436,btlp000228,btlp000054,btlp000902,btlp002178,btlp000507,btlp002134,btlp002547,tslp000300,btlp000713,btlp006107,btlp006111,btlp002051,btlp001160,btlp000957,btlp000919,btlp000062,btlp000827,btlp006249,btlp000083
{
  class { 'role::rl_patrol_rofs': }
}

# Third prod push of patrol_ROFS
#node btlp001449,tslp000577,btlp006312,tslp000077,tslp000253,btlp006077,tslp000576,btlp002100,btlp000350,btlp001437,btlp002607,tslp000785,btlp002176,btlp000264,btlp002060,btlp001954,tslp000086,btlp001401,btlp001959,btlp006068,tslp000291,btlp001066,tslp000288,tslp000656,btlp002594,btlp001208,btlp006079,tslp000075,btlp001374,btlp001198,tslp000672,tslp000653,btlp001058,btlp001829,btlp001964,btlp001735,btlp001951,btlp001592,btlp006310,tslp000084,btlp001413,btlp000869,btlp000373,btlp001950,btlp000861,btlp002565,btlp001828,btlp000890,btlp001411,btlp001206,btlp001679,btlp001831,btlp001441,btlp000353,tslp000671,btlp001479,btlp000352,btlp001460,btlp001014,tslp000419,btlp001742,btlp006222,btlp001200,tslp000611,btlp002078,btlp001062,btlp002205,btlp003144,btlp002213,btlp002447,btlp000756,btlp006572,tslp000658,tslp000655,btlp001926,btlp000340,btlp006004,btlp001070,tslp000374,btlp002204,btlp001952,btlp006064,btlp002303,btlp001415,btlp001251,btlp006167,tslp000610,btlp001933,btlp001929,btlp003154,btlp001547,btlp001008,btlp001444,btlp002639,btlp001319,tslp000654,tslp000093,btlp001284,btlp001448,btlp001747,btlp000752,btlp006006,btlp006066,btlp001546,btlp006002,btlp002143,btlp002080,btlp000415,btlp001924,btlp001739,btlp000402,btlp006223,tslp000225,btlp001945,btlp006315,btlp000403,btlp003162,btlp001678,tslp000670,btlp006089,btlp002578,btlp001017,tslp000569,btlp001442,btlp000954,btlp001745,btlp001930,btlp001946,btlp001196,btlp001676,tslp000275,btlp002633,btlp002152,btlp000417,btlp001593,btlp001925,btlp001939,btlp000720,tslp000567,btlp002783,btlp002145,btlp000364,btlp001203,tslp000525,tslp000089,btlp006313,btlp006169,btlp000945,btlp002185,btlp002064,btlp006217,tslp000420,btlp001438,btlp006218,btlp001476,btlp001970,btlp001977,btlp001009,lp97737,lp97545,lp98955,lp97041,lp98157,lp99528,lp97338,lp99277,lp99555,lp97532,lp99518,lp98927,lp97388,lp97714,lp97328,lp99454,lp97852,lp97526,lp98180,lp99404,lp97542,lp99345,lp98933,lp97717,lp98138,lp97710,lp97724,lp97418,lp98926,lp99313,lp97816,lp98176,lp97768,lp98085,lp97804,lp97516,lp99688,lp97118,lp98070,lp98909,lp97913,lp98090,lp97336,lp99401,lp98965,lp97614,lp99541,btlp001310,btlp001776,btlp002522,btlp001013,btlp002627,tslp000301,btlp002137,btlp001682,btlp002177,btlp000019,btlp006117,btlp000145,tslp000262,btlp002269,btlp001763,btlp001575,btlp000654,btlp000034,btlp001579,btlp001302,tslp000612,tslp000445,btlp000577,btlp000448,btlp000217,btlp000584,btlp006272,tslp000022,tslp000508,btlp000142,btlp000178,tslp000270,btlp000686,btlp000147,btlp000021,btlp002314,btlp002138,btlp001774,btlp000175,btlp000249,btlp006351,btlp000506,btlp006269,btlp006081,btlp000045,btlp002273,btlp006096,tslp000011,tslp000255,tslp000272,btlp000866,btlp000653,btlp000685,btlp001770,btlp006033,btlp006359,btlp001680,btlp001025,btlp000049,btlp006296,btlp006174,btlp000950,btlp000911,btlp003128,btlp000576,btlp001022,btlp001767,btlp002266,btlp001324,btlp000632,btlp002307,btlp006101,btlp000143,btlp002309,btlp001036,tslp000747,btlp006128,btlp001430,btlp000999,btlp001295,btlp006104,tslp000369,btlp002275,btlp000951,btlp003164,btlp002521,btlp002117,btlp001773,btlp003160,btlp006565,tslp000778,btlp001918,btlp001193,btlp003163,btlp001316,btlp006349,btlp000209,tslp000748,btlp002571,btlp006361,btlp000596,tslp000613,btlp000629,btlp002265,btlp001218,btlp000949,btlp006370,btlp000785,btlp000809,btlp000202,tslp000376,btlp006116,btlp006130,btlp002049,btlp001080,btlp001313,btlp000790,btlp001722,btlp000918,btlp000052,btlp001330,btlp000063,btlp006275,btlp006134,btlp001268,btlp000575,btlp006129,btlp000037,btlp006143,btlp000048,btlp001771,btlp006360,btlp006316,btlp002223,btlp000041,btlp000914,btlp001768,btlp000524,btlp000064,tslp000745,btlp000251,btlp006106,btlp001432,btlp001573,btlp001721,btlp002169,btlp006352,btlp001671,btlp001670,btlp006580,btlp000917,btlp001424,tslp000269,btln001615,btlp001910,btlp000018,btlp000140,btlp001574,btlp006499,btlp000036,btlp003151,btlp006131,btlp001241,btlp000907,btlp001576,btlp002217,btlp006371,btlp002211,btlp000181,btlp001012,btlp000085,btlp006317,tslp000256,btlp002598,btlp001911,btlp002228,btlp000012,btlp006345,btlp000154,btlp006318,btlp002270,btlp000168,btlp001077,btlp001428,btlp002230,btlp001453,tslp000512,btlp000208,btlp001919,btlp000598,btlp001901,btlp002452,btlp001308,btlp000996,btlp001081,tslp000539,btlp002548,btlp000046,btlp001000,btlp000597,btlp001543,btlp001219,btlp006274,btlp006583
#{
#  class { 'role::rl_patrol_rofs': }
#}




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
ln99619,ln99152,ln99035,ln99036,ln99833,ln99779,ln99835,ln99834
{
class { 'role::rl_dynatrace_st': }
}

node btln007523,btln007524,btln007717,btln007718,ln99773,ln99826, btln001649,btln001650,btln002025,btln002026,
btln002027,btln002028,btln007399,btln007401,btln007402,ln99694,ln99695,ln99696,ln99734,ln99735,ln99778,
ln99784,ln99785,ln99788,btln000045,btln000046,btln000047,btln000048,
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
