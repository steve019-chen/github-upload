node default {

# TELUS base profile to be included for all Linux and Windows machines

include profile::pr_base

}

# lint:ignore:unquoted_node_name lint:ignore:140chars lint:ignore:puppet_url_without_modules


# Phase 4:20200224 CRQ83078 : Upgrade 553 servers
# node btwn001541, btwn004415, btwn001641, btwn004350, btwn001525, btwn001019, btwn000102, btwn004437, btwn001086, btwn000359, btwn000194, btwn001438, tswp000411, tswp000350, btwn004243, btwn004427, btwn004209, btwn004305, btwn000180, tswp000002, btwn000352, btwn000131, btwn000161, btwn004302, btwn001678, btwn001025, btwn004329, btwn004158, btwn004402, btwn001517, btwn004598, btwn004208, btwn004586, btwn001576, btwn004281, btwn004385, btwn001021, btwn004227, btwn004646, btwn004651, btwn004335, btwn001054, btwn001540, btwn000085, btwn000173, btwn004570, btwn000347, btwn004421, btwn001029, btwn004321, btwn000135, btwn004420, btwn000199, btwn001516, btwn000205, btwn001674, btwn004629, btwn000197, btwp013821, btwp014028, btwp013950, btwp013780, btwn000204, btwp013942, btwp013392, btwp001502, btwp014029, btwp001447, btwp013670, btwp013846, btwn004407, btwp001512, btwn004543, btwp014074, btwp013655, btwp013888, btwn004318, btwn000128, btwp013701, btwp013687, btwn004295, btwn004641, btwp013663, btwp001481, btwp000083, btwp013502, btwp000131, btwn004627, btwn001482, btwp014041, btwp014031, btwp013688, btwp001679, btwn001483, btwp013811, btwp014006, btwn004588, btwp004243, btwp013854, btwp014019, btwn000229, btwp013592, btwp014015, btwp001260, btwp013908, btwp013872, btwp014054, btwp004219, btwp013609, btwp013958, btwp014062, btwp014004, btwp013664, btwn004306, btwp013886, btwn004283, btwp004190, btwp004211, btwp001357, btwp014001, btwp013737, btwp001469, btwp001191, btwn000089, btwp001643, btwp001638, btwp013588, btwp001509, btwp004290, btwn004204, btwp013861, btwp000256, btwp001383, btwp014061, btwp014034, btwp013661, btwp000368, btwp002101, btwn001673, btwn000195, btwp000283, btwp014052, btwp013878, btwp001475, btwp014090, tswp000001, btwp001356, btwn004345, btwp013631, btwp013662, btwp013904, btwp013580, btwp001467, btwn001571, btwp001377, btwp000257, btwn000151, btwp001454, btwp013887, btwp004280, btwp001637, btwn004310, btwn004652, btwp004281, btwp001500, btwp014010, btwn001563, btwp004238, btwp013739, btwp013734, btwp004279, btwp001596, btwp013674, btwn004621, btwn001639, btwp013991, btwn001439, btwp013903, btwp000786, btwp001691, btwp013985, btwp001333, btwp000971, btwp001336, btwp001503, btwp001513, btwp001482, btwp013877, btwp013944, btwp001558, btwp013823, btwp013727, btwp000754, btwp001689, btwp014008, btwp013698, btwp001566, btwp000081, btwp013604, btwp013929, btwp000759, btwp013746, btwp001685, btwp013768, btwp013677, btwp000087, btwn001415, btwn001490, btwn004307, btwp001646, btwp013385, btwp014003, btwp001373, btwp013716, btwp001592, btwp013722, btwp013935, btwp013526, btwp014040, btwp001656, btwn000087, btwp013633, btwp001670, btwn004485, btwp001480, btwp001487, btwp001692, btwn004634, btwp013835, btwp013639, btwp013708, btwn001495, btwp013900, btwp013648, btwp004209, btwp013742, btwn000134, btwn001522, btwp014053, btwn004316, btwn000170, btwp013800, btwp013723, btwp001342, btwp014050, btwp013667, btwp001404, btwp001376, btwn004656, btwp041970, btwn004159, btwn000230, btwn001554, btwp013343, btwp001523, btwp013626, btwp001476, btwp001488, btwn004386, btwp013504, btwp004239, btwp001693, btwp001491, btwp013926, btwn000188, btwn000328, btwp013399, btwp013702, btwp013981, btwn001493, btwn000362, btwn004640, btwn001675, btwp004207, btwp013860, btwp004291, btwp013684, btwp001358, btwp000280, btwp013622, btwn004230, btwp013919, btwn000146, btwn000991, btwp001697, btwp014030, btwp013771, btwp013996, btwn000091, btwp001534, btwp000371, btwn001100, btwn001560, btwp013955, tswp000063, btwn004513, btwp004294, btwn000157, btwn001436, btwn000177, btwp001524, btwn000203, btwp001619, btwp013765, btwp001348, btwn000216, btwn000129, btwn001098, btwn000211, btwn004597, btwn004546, btwp013524, btwp001642, btwn001104, btwn000227, btwp001520, btwn004282, btwn000115, btwn004395, btwn004372, btwn000133, btwp013523, btwp013889, btwn000183, btwp013998, btwn001545, btwn004374, btwn001103, btwn000193, btwn004659, btwp013379, btwn001101, btwp013718, btwp004240, btwp001380, btwp013884, btwn000092, btwn000325, btwn000121, btwp013745, btwn004479, btwn000145, btwp013683, btwn001544, btwn004394, btwn001558, btwp013761, btwn004398, btwp013731, btwp001485, btwn001555, btwp014011, btwp014055, btwp001448, btwp013642, btwp001688, btwn000992, btwp001374, btwp001392, btwp013825, btwp001699, btwp013668, btwp013758, btwp014025, btwn001627, btwp013707, btwn001642, btwp013632, btwp001353, btwp013388, btwp013717, btwp001468, btwp013660, btwp001514, btwn001497, btwn001488, btwp013876, btwp001550, btwp001386, btwp013883, btwn001486, btwn001658, btwp001259, btwp001708, btwp013953, btwn000164, btwn001643, btwp001576, btwp013623, btwp001241, btwp013812, btwp001530, btwp000078, btwp004221, btwn000182, btwn001652, btwn004391, btwp001610, btwp001458, btwn000149, btwn004229, btwn004396, btwp013659, btwp013909, btwp001658, btwn001020, btwp013747, btwn004393, btwp014071, btwp001347, btwp004284, btwn004354, btwp001616, btwn004569, btwn004294, btwn000201, btwp014077, btwp001507, btwn000159, btwp013952, btwn000158, btwp013836, btwp001484, btwn000232, btwp014047, btwp013855, btwp001715, btwp001700, btwp001598, btwn000169, btwp000390, btwn000138, btwn000233, btwp004283, btwp014044, btwp004216, btwp004208, btwp013584, btwp013501, btwp013858, btwn001582, btwn001569, btwn004364, btwn004347, btwn000106, btwp013753, btwp004191, btwp001662, btwn000162, btwn001597, btwn000234, btwp013398, btwp013608, btwn001141, btwn004202, btwp000369, btwp001264, btwp001385, btwn000221, btwp013937, btwn000202, btwn000168, btwp000370, btwn000124, tswp000259, btwp013949, btwn004522, btwn004424, btwn004360, btwp001522, btwn000190, btwn001562, btwn000228, btwn000166, btwp001652, btwn004590, btwp013810, btwn000174, btwn004417, btwp013387, btwn000356, btwn004365, btwp001636, btwn001102, btwp000079, btwp013925, btwp013743, btwp013752, btwn000171, btwn000198, btwp001478, btwn000186, btwn004241, btwn000223, btwn004226, btwn000360, btwn004613, btwn000163, btwp004210, btwn004481, btwn000348, btwn000125, btwn000111, btwp013570, btwn004648, btwn004206, btwn004242, btwp004212, btwn004315, btwn004228, btwp013704, btwp013627, btwp013350, btwn000142, btwn004343, btwn001547, btwp001698, btwp013365, btwp001266, btwn004301, btwp001486, btwn004426, btwp013832, btwn004317, btwp013675, btwp013649, btwn004334, btwn001671, btwn000098, btwp000247, btwp001479, btwp001669, btwp013706, btwn001489, btwp000766, btwp013868, btwn004550, btwp001615, btwn000086, btwp013640, btwp001661, btwn000214, btwn001022, btwp013754, btwp001470, btwp013730, btwn000150, btwp013827, btwn001550, btwn004222, btwp001526, btwp013611, btwp001663

# Phase 3:20200220: CRQ83133 : Upgrade 737 servers
# node btwn001573, btwn001594, btwn004400, btwn004623, btwp013957, btwn000148, btwp001382, btwp013625, btwp013999, btwp013397, btwp013721, btwp013805, btwp001389, btwp001536, btwp001712, btwp013916, btwp013772, btwn001548, btwp013763, btwp013857, btwp001501, btwp001653, btwp013782, btwn001099, btwp001387, btwp001546, btwp013610, btwp014000, btwp013744, btwp001426, btwp004188, btwp001427, btwn001570, btwn004191, btwp014012, btwp001714, btwn001679, btwn001685, btwp013864, btwp013849, btwn004234, btwn001397, btwp013738, btwn004520, btwp013583, btwn000096, btwn001649, btwp001350, btwn001395, btwn004196, btwp001648, btwp013755, btwn000099, btwp001432, btwn001651, btwp013689, btwn004297, btwp013713, btwn001412, btwn004304, btwp014035, btwp013715, btwp013826, btwp013714, btwp000281, btwn001446, btwn004172, btwp001379, btwp013930, btwn001629, btwp001687, btwn001095, btwp001633, btwp001375, btwn004368, btwn001592, btwn000750, btwn004214, btwn001393, btwn004160, btwp013658, btwn004194, btwp001510, btwp013505, btwn004578, btwp001471, btwp013372, btwp013829, btwn001442, btwp013784, btwp013351, btwp013781, btwp013402, btwp013885, btwp013582, btwp014013, btwp001668, btwp013934, btwn004369, btwp013567, btwn004616, btwn004261, btwp004278, btwn004380, btwn001609, btwp001464, btwp001582, btwn004614, btwn004581, btwp000279, btwp001261, btwn001689, btwn004233, btwn000353, btwn999992, btwn001399, btwp013856, btwp013906, btwn001630, btwp014024, btwn000432, btwn004198, btwn004256, btwp013901, btwp013907, btwn000453, btwn001628, btwp013839, btwp000314, btwn001688, btwp013621, btwp014020, btwp014033, btwp013344, btwp013961, btwn004181, btwp013863, btwn004384, btwp013750, btwp013807, btwp013699, btwn001633, btwp014072, btwn001654, btwp001641, btwp013361, btwn001619, btwp013809, btwp002102, btwp001340, btwn001591, btwp013401, btwn004215, btwp001690, btwp013847, btwp013395, btwp013593, btwp013650, btwp013740, btwn001444, btwp001433, btwn004558, btwp001567, btwp013581, btwp013578, btwn004498, btwp013585, btwn001666, btwp001639, btwn001090, btwp014002, btwn004490, btwp013354, btwp014021, btwp001579, btwp001541, btwn001413, btwp001352, btwp013628, btwp001543, btwn001478, btwp013644, btwn004171, btwn004499, btwp013656, btwn004567, btwn001394, btwn004515, btwp001337, btwp001529, btwn004538, btwp013819, btwp013834, btwn000748, btwp001672, btwp013525, btwp001634, btwp013813, btwp001341, btwp001405, btwp000250, btwp001542, btwn004580, btwp001493, btwn000445, btwn004277, btwn001590, btwp013340, btwp013579, btwp013984, btwp001559, btwn001653, btwp013389, btwp013602, btwn001663, btwp004292, btwn004176, btwp013866, btwp001473, btwn004170, btwp014005, btwn004594, btwn004195, btwn001686, btwp013989, btwn001656, btwp014093, btwn004500, btwn004549, btwn004577, btwp013831, btwp001654, btwp013947, btwp013987, btwp001495, btwn001496, btwn004221, btwn004192, btwn004496, btwn004474, btwp001457, btwp013697, btwp013751, btwn001605, btwn001507, btwp000252, btwp014038, btwn004501, btwn004218, btwn001396, btwp013773, btwp001594, btwp001555, btwp013700, btwp004288, btwp014089, btwp004225, btwp013605, btwn001606, btwn004263, btwp004233, btwn004199, btwn001613, btwn001077, btwp013654, btwn004494, btwp013923, btwp001499, btwn001620, btwn001636, btwp001609, btwn001443, btwn001093, btwp013803, btwn001445, btwn004539, btwp013764, btwp013902, btwp001498, btwn004477, btwp013703, btwp001465, btwn004371, btwp013348, btwp001678, btwp000375, btwp013897, btwn004540, btwp001390, btwn004278, btwn001634, btwp001508, btwp000084, btwp013898, btwn004579, btwn004553, btwn004382, btwn004381, btwp001586, btwp013994, btwp000086, btwp013341, btwp001391, btwp004181, btwp013601, btwp000372, btwp013756, btwp004236, btwp004224, btwp001707, btwp001531, btwp001459, btwp013852, btwp001640, btwp013769, btwp001557, btwp001371, btwp014099, btwp004187, btwp002105, btwn001414, btwp014026, btwp001474, btwp013634, btwp013992, btwp013381, btwp000820, btwp001527, btwp999940, btwp004286, btwp013890, btwp000818, btwp013806, btwp004295, btwp013837, btwp013587, btwp013853, btwp013603, btwp001578, btwp013767, btwp013828, btwp001466, btwp001455, btwp001506, btwp014014, btwp013646, btwp013370, btwp001694, btwp001713, btwp013725, btwp013382, btwp001175, btwp004213, btwp001617, btwp004277, btwp013503, btwp013840, btwp001599, btwp013848, btwp013586, btwp013927, btwp001384, btwp001677, btwn000231, btwn004480, btwp013824, btwp001548, btwp001477, btwp001554, btwn004348, btwp013569, btwp001635, btwn004412, btwp013366, btwp013865, btwp014022, btwp001551, btwn004352, btwn004482, btwn000094, btwp001549, btwn000140, btwp002103, btwp000970, btwp013719, btwn000144, btwp013850, btwp002106, btwn004414, btwn004353, btwp001597, btwp014016, btwp013921, btwp013377, btwp013748, btwp001496, btwp001556, btwp014027, btwp001516, btwn004387, btwp004282, btwn004362, btwn000126, btwn004654, btwp014007, btwp014045, btwn000206, btwp013711, btwn000209, btwp014017, btwp013673, btwn001409, btwp013362, btwp014018, btwp013360, btwp004214, btwp013979, btwp001456, btwn000137, btwn004309, btwp013816, btwp013814, btwp013869, btwp013766, btwn001553, btwp013643, btwn000358, btwp001369, btwp001540, btwn001596, btwn000191, btwn000222, btwn001568, btwp001702, btwp001519, btwn001565, btwp013830, btwp001650, btwp001647, btwn004346, btwn001593, btwn004644, btwp001343, btwp002104, btwn004544, btwp001657, btwn004647, btwp013760, btwn004401, btwp013983, btwp013390, btwp013736, btwp001472, btwp001492, btwp001240, btwp013403, btwn000113, btwn000153, btwn001552, btwp013990, btwp013595, btwp013732, btwp014075, btwn000326, btwn004519, btwp001717, btwn004471, btwn004620, btwp013652, btwp001676, btwp013959, btwp000367, btwn000213, btwp001497, btwn004298, btwp001334, btwp013726, btwp013779, btwp013801, btwp001537, btwp013589, btwp001446, btwn004593, btwn001085, btwp004220, btwn000127, btwn004576, btwn004405, btwp004285, btwp000246, btwn004573, btwn000357, btwp001515, btwp014032, btwn001561, btwn004330, btwp013696, btwp013808, btwp013954, btwn001492, btwp001349, btwn000184, btwn000116, btwp013568, btwn004636, btwp001607, btwn004566, btwp014042, btwn000143, btwp013931, btwn004404, btwp004289, btwp013373, btwn004565, btwp004217, btwn001026, btwp013817, btwp013891, btwn004363, btwn004483, btwp001686, btwp013815, btwn000107, btwn000225, btwn001599, btwp001655, btwn000132, btwn001551, btwn004279, btwn000108, btwp013867, btwp002107, btwp001192, btwp001517, btwn000200, btwn004332, btwn001186, btwp013845, btwp013396, btwn000296, btwn004657, btwp001711, btwp013778, btwp013749, btwn000187, btwp013572, btwp000282, btwp001614, btwp014066, btwn001572, btwp014023, btwp001701, btwn001506, btwn000112, btwp013762, btwp013997, btwn004323, btwp013653, btwn001672, btwn000122, btwp013665, btwn004349, btwp001608, btwp013571, btwn000208, btwp013733, btwp001651, btwp014037, btwp001265, btwp000772, btwp013735, btwn004587, btwp000315, btwn004635, btwp014039, btwp013895, btwn000093, btwp001553, btwn004303, btwn000181, btwn000220, btwp013799, btwp013353, btwp013679, btwp000817, btwn001677, btwn004403, btwp014048, btwp004234, btwn000172, btwn004650, btwp001370, btwn000215, btwn004525, btwp013671, btwp013882, btwp013352, btwn000165, btwp013936, btwn004409, btwp000251, btwn000192, btwn000147, btwn004288, btwp013728, btwp001649, btwp013349, btwn004489, btwn004472, btwn001644, btwp001403, btwp001372, btwn004585, btwn004658, btwn001524, btwp013986, btwn001437, btwn000219, btwp001171, btwn004213, btwp001565, btwp001258, btwn001559, btwn004225, btwn001543, btwn004319, btwn004643, btwp013759, btwn004280, btwn004642, btwn000210, btwp001528, btwn004416, btwn000354, btwp000360, btwp001535, btwn000100, btwp014009, btwp013757, btwp013400, btwn000235, btwp013962, btwn004406, btwp013783, btwp013641, btwn004311, btwn000097, btwp000373, btwn001566, btwn001523, btwn004308, btwn004299, btwn004475, btwn001556, btwn004205, btwn004296, btwn000363, btwn004312, btwn001626, btwn004397, btwn004300, btwn000095, btwn000185, btwn000084, btwn004547, btwn001584, btwn001408, btwn001575, btwn001557, btwn001185, btwn004240, btwn004637, btwn000118, btwn001669, btwn000152, btwn004383, btwn001546, btwn001140, btwn004223, btwn004631, btwn004411, btwn000224, btwn004289, btwn001579, btwn004564, btwn000196, btwn000119, btwn001601, btwn000178, btwn000355, btwn004320, btwn004313, btwn004344, btwn001564, btwn004249, btwn004207, btwn004625, btwn000218, btwn000120, btwn004237, btwn004336, btwn000361, btwn004545, btwn001676, btwn004333, btwn004413, btwn000109, btwn004314, wp41929, wp80970, wp80939, wp81100, wp81063, wp41927, wp80946, wp81016, wp81049, wp41931, wp81015, wp81061, wp80977, wp41928, wp80899, wp80941, wp81018, wp81065, wp81000, wp41932, wp80995, wp80943, wp80968, wp80996, wp80982, wp81064, wp81001, wp81012, wp41930

# Phase 2:20200217 CRQ83129: Upgrade 311 servers
node btwp013960, btwp013676, btwp013982, btwp013371, btwp013386, btwp013710, btwp001618, btwp013862, btwp013995, btwp004287, wn50631, btwp000391, btwp013933, btwp013383, btwp013741, btwp001595, btwp013875, btwp001494, btwp001381, btwp013918, btwp013843, btwp013838, btwp013892, btwp013896, btwp013802, btwp013932, btwp004237, btwp013820, btwp013945, btwp001518, btwp013922, btwp013620, btwp001351, btwp013980, btwp001709, btwp013905, btwp013594, btwp014036, btwp013720, wn54174, btwp014056, btwp001593, btwp013709, btwp001346, btwp001577, btwp013380, btwp001547, btwp001587, btwp013378, btwp001378, btwp013669, btwn001610, btwn000451, btwp013666, btwp013917, btwp001575, btwp013978, btwn004177, btwp013712, btwp013384, btwp013951, btwn004476, btwp001521, wn50627, btwp014073, btwp001568, btwn004276, btwp013770, btwn004492, btwp000819, wn54173, btwn004495, btwn004521, wn54202, btwn004376, btwn001503, btwn001657, btwn001611, btwp001645, btwp000085, btwp013956, btwp013681, btwp001359, btwp001600, btwn001687, btwp013724, btwp013624, btwn001586, wn54130, btwn004572, btwp001710, btwp013729, btwp001263, wn54206, btwn001655, btwp013924, btwp013391, btwn001637, btwp014043, btwp001511, btwp013894, btwn001635, btwp013899, btwn004373, btwp013394, btwp000130, btwn001537, btwn004555, btwn004366, btwp004293, wn54199, btwn004571, btwn001094, btwp004218, btwn004491, btwp000249, btwn004193, btwp013988, btwn001508, btwp000253, btwn004367, btwp001483, btwp000787, btwn001614, btwp001613, btwp004215, btwn004556, btwp001489, btwn004497, btwn000444, btwn001612, btwn004190, btwn004486, wn50624, btwn004216, btwn004180, btwn004575, btwn001400, btwp001552, btwp014070, btwp013818, btwn000454, btwp014046, btwn004559, btwn001589, btwn004378, wn50630, btwn001615, btwp013393, btwp001490, btwn004592, btwn001650, btwn004526, btwn001096, btwn004557, btwn004478, btwp001388, btwp013657, btwp013822, btwp014076, wn54201, wn50626, wn54207, wn50628, wn54172, wn54175, wn54193, wn54166, wn54167, wn54191, wn54155, wn54184, wn54192, wn54190, wn54198, wn54157, wn54180, wn54200, wn54194, wn54185, wn54171, wn54205, wn54183, wn50623, btwn000136, wn54146, btwn004624, btwn004589, btwn000217, btwn004660, btwn004655, btwn000101, btwn004661, btwn000212, btwn004639, btwn000176, btwn004331, btwn004399, btwn004408, btwn004638, btwn001494, btwn004356, btwn000364, btwn004626, btwn000226, btwn001580, btwn001581, btwn004484, btwn004574, wn54156, btwn000114, btwn000327, btwn000130, btwn004203, btwn004361, btwn004425, btwn004351, wp80948, btwn000088, btwn001097, btwn000345, btwn001491, wp81052, btwn001542, btwn004428, btwn004630, btwn004633, btwn001549, wp81057, btwn004527, btwn001055, wp80978, btwn000167, wp81032, btwn000175, wp41238, btwn000117, btwn001526, btwn001567, wp81055, btwn000993, btwn004591, btwn004392, wp81039, wp81056, wp81058, wp50352, wp81174, wp81034, wp81054, wp81118, wp81019, wp50353, wp80994, wp80863, wp81014, wp81031, wp40312, wp80898, wp81112, wp81013, wp80955, wp80998, wp81021, wp81171, wp80979, wp41983, wp81062, wp81101, wp81105, wp80984, wp81033, wp80928, abapp148, wp80947, wp80961, wp80976, wp80983, wp41925, wp80964, wp80962, wp41973, wp81042, wp81017, wp41926, wp80999, wp80981, wp41445, wp81027, wp81040, wp80929, wp81002, wp80989, wp80969, wp80965, wp81041, wp80942, wp80992, wp80990, wp41984, wp80927, wp81053, wp41933, wp41934, wp81104, wp81175, wp41446, wp81020, wp80997, wp81036, wp80980
{
  case $facts['kernel'] {
    'Linux'  : {

      # case $facts['os']['release']['major'] {
      #   '5':  {
      #           $puppet5_channel = 'puppet5-rhel5-x86_64-locked'
      #           $puppet6_channel = 'puppet6-rhel5-x86_64-locked'
      #         }
      #   '6':  {
      #           $puppet5_channel = 'puppet5-rhel6-x86_64-locked'
      #           $puppet6_channel = 'puppet6-rhel6-x86_64-locked'
      #         }
      #   '7':  {
      #           $puppet5_channel = 'puppet5-rhel7-x86_64-locked'
      #           $puppet6_channel = 'puppet6-rhel7-x86_64-locked'
      #         }
      #   default: { fail('Puppet is only supported on Oracle Linux 5,6, and 7') }
      # }

      # # Add Puppet 6 channel
      # telus_lib::yum_channel { $puppet6_channel:
      #   ensure => present,
      # }

      # # Remove Puppet 5 channel
      # telus_lib::yum_channel { $puppet5_channel:
      #   ensure => absent,
      # }


      # class {'::puppet_agent':
      #   collection      => 'puppet6',
      #   package_version => '6.11.1',
      #   service_names   => ['puppet'],
      #   manage_repo     => false,
      #   notify          => Exec['set lin no_proxy','set lin resubmit_facts'],
      #   require         => Telus_lib::Yum_channel[$puppet6_channel],
      # }

      # exec { 'set lin no_proxy':
      #   command => "puppet config set no_proxy 'localhost, 127.0.0.1, ${servername}'",
      #   path    => '/opt/puppetlabs/puppet/bin:/bin:/usr/bin:/usr/sbin:/bin',
      #   unless  => "puppet config print no_proxy | grep -q ${servername} > /dev/null",
      # }

      # exec { 'set lin resubmit_facts':
      #   command => 'puppet config set resubmit_facts true',
      #   path    => '/opt/puppetlabs/puppet/bin:/bin:/usr/bin:/usr/sbin:/bin',
      #   unless  => 'puppet config print resubmit_facts | grep -q true > /dev/null',
      # }

    }
    'windows': {

      # Run it only on Windows 2012 R2 and newer

      if (Float.new($facts['kernelmajversion'])) >= 6.3 {

        file { 'win install file':
          ensure => present,
          path   => "${env_temp_variable}\\puppet-agent-6.11.1-x64.msi",
          source => 'puppet:///software/windows/puppet-agent-6.11.1-x64.msi',
        }

        class {'::puppet_agent':
          absolute_source       => "${env_temp_variable}\\puppet-agent-6.11.1-x64.msi",
          collection            => 'puppet6',
          package_version       => '6.11.1',
          service_names         => ['puppet'],
          manage_repo           => false,
          msi_move_locked_files => true,
          require               => File['win install file'],
          notify                => Exec['set win no_proxy','set win resubmit_facts'],
        }

        exec { 'set win no_proxy':
          command => "cmd.exe /c  puppet config set no_proxy 'localhost, 127.0.0.1, ${servername}'",
          path    => 'C:\Program Files\Puppet Labs\Puppet\bin;C:\Windows\system32',
          unless  => "cmd.exe /c puppet config print no_proxy | findstr.exe ${servername} > nul",
        }

        exec { 'set win resubmit_facts':
          command => 'cmd.exe /c  puppet config set resubmit_facts true',
          path    => 'C:\Program Files\Puppet Labs\Puppet\bin;C:\Windows\system32',
          unless  => 'cmd.exe /c puppet config print resubmit_facts | findstr.exe true > nul',
        }

      }
    }
    default: { }
  }
}


# # 20191205 - Node manager for starting services on weblogic
# node btlp000757, lp97208
# {
#   include role::rl_nodemanager
# }

# 20190222 CRQ37712 - Project Diversio

node ln98551,lp97396,lp99440,lp99538,lp97817,lp97397,lp97728
{
  include role::rl_diversio
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
btln008021,btln008018,btln008019,btln008067,ln99151,btln001242,btln001243,btln007855,btln007856,btln007661,btln007662,btln008007,btln008003,btln008004,btln008008,btln001178,btln001179

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
ln98430,ln98431,btln000400,btln000401,ln98142,ln98157,btln007235,btln007236,btln007232,btln007233,btln007237,btln007984,btln007985,ln98775,ln99015,ln98844,ln98776,btln000103,ln99790
{
class { 'role::rl_dynatrace': }
}

# Dynatrace agent Production

node btlp000756,btlp000757,btlp000758,btlp000759,btlp000763,btlp001439,btlp001440,btlp001441,btlp001444,btlp001445,btlp006092,btlp006093,
btlp006094,btlp006229,btlp006230,btlp006231,btlp006279,btlp006280,btlp006281,btlp006282,btlp006284,btlp006339,btlp006340,btlp006523,btlp006524,btlp006525,
btlp006526,btlp006527,btlp006528,btlp006529,btlp006530,btlp006533,btlp006534,lp97208,lp97529,lp97530,lp97532,lp97533,lp97540,lp97541,lp97542,lp97543,lp97544,
lp97545,lp97546,lp97547,lp97548,lp97552,lp97632,lp97716,lp97717,lp97718,lp97719,lp97720,lp97721,lp97722,lp97723,lp98066,lp98067,lp98068,lp98069,lp98070,lp98071,
lp98072,lp98073,lp98167,lp99431,lp99445,lp99446,lp99447,lp99448,lp99449,lp99452,lp99453,lp99516,lp99517,lp99518,lp99519,lp99520,lp99521,lp99522,lp99523,lp99546,
lp99547,lp99548,lp99549,lp99550,lp99694,lp99695,lp99696,lp99697,lp99698,lp99699,lp99700,lp99701,lp99702,lp99703,lp99704,lp99755,lp99756,lp99757,lp99758,lp99759,
lp99760,lp99761,lp99762,lp99763,lp99764,lp99765,lp99766,lp99767,lp99787,lp99788,lp99789,lp99790,lp99791,lp99792,lp99793,lp99794,lp99795,lp99796,lp99797,lp99798,
btlp000044,btlp000045,btlp000046,btlp000047,btlp001237,btlp001238,btlp001239,btlp001429,btlp001430,btlp001431,btlp001434,btlp001435,btlp002443,btlp003165,
btlp003166,btlp003167,btlp003168,btlp003169,btlp003170,btlp006104,btlp006105,btlp006106,btlp006239,btlp006240,btlp006241,btlp006242,btlp006243,btlp006272,
btlp006273,btlp006274,btlp006275,btlp006276,btlp006277,btlp006287,btlp006288,btlp006292,btlp006293,btlp006294,btlp006298,btlp006299,btlp006343,btlp006344,
btlp006348,btlp006349,btlp006350,btlp006489,btlp006490,btlp006491,btlp006492,btlp006493,btlp006494,btlp006547,btlp006548,btlp006549,btlp006550,btlp006551,
btlp006552,btlp006553,btlp006554,btlp006555,btlp006556,btlp006557,btlp006558,btlp006942,btlp006943,btlp006944,btlp007357,btlp007358,btlp007359,btlp007360,
btlp007361,btlp007362,btlp007363,btlp007364,btlp007365,btlp007366,btlp007367,btlp007368,btlp001745,btlp001746,btlp001747,btlp001748,btlp001749,lp98154,lp98155,
lp98156,lp98157,lp98158,lp98159,lp98253,btlp001769,btlp001770,btlp001771,btlp001772,btlp001773,btlp001376,btlp001377,btlp001378,btlp001379,btlp001380,lp99421,
lp99422,lp99423,lp99424,lp99415,lp99556,lp99557,lp99558,lp97612,lp97613,lp97825,lp97826,lp97827,lp99414,btlp000576,btlp000577,btlp000578,btlp000579,
btlp000580,btlp006251,lp97782,btlp006531,btlp006532,lp97549,lp97550,lp97551,lp99693,lp99551,lp99552,lp99553
{
class { 'role::rl_dynatrace_pr': }
}


# lint:endignore
