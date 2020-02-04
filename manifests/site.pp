node default {

# TELUS base profile to be included for all Linux and Windows machines

include profile::pr_base

}

# lint:ignore:unquoted_node_name lint:ignore:140chars lint:ignore:puppet_url_without_modules

# 20200123 CRQ78695 Puppet 6 upgrade

# node btlp003166, btlp003167, btlp003168, btlp003169, btlp003170, btlp006240, btlp006241, btlp006242, btlp006243, btlp006490, btlp006491, btlp006492, btlp006493, btlp006494
# {
#   case $facts['kernel'] {
#     'Linux'  : {

#       case $facts['os']['release']['major'] {
#         '5':  {
#                 $puppet5_channel = 'puppet5-rhel5-x86_64-locked'
#                 $puppet6_channel = 'puppet6-rhel5-x86_64-locked'
#               }
#         '6':  {
#                 $puppet5_channel = 'puppet5-rhel6-x86_64-locked'
#                 $puppet6_channel = 'puppet6-rhel6-x86_64-locked'
#               }
#         '7':  {
#                 $puppet5_channel = 'puppet5-rhel7-x86_64-locked'
#                 $puppet6_channel = 'puppet6-rhel7-x86_64-locked'
#               }
#         default: { fail('Puppet is only supported on Oracle Linux 5,6, and 7') }
#       }

#       # Add Puppet 6 channel
#       telus_lib::yum_channel { $puppet6_channel:
#         ensure => present,
#       }

#       # Remove Puppet 5 channel
#       telus_lib::yum_channel { $puppet5_channel:
#         ensure => absent,
#       }


#       class {'::puppet_agent':
#         collection      => 'puppet6',
#         package_version => '6.11.1',
#         service_names   => ['puppet'],
#         manage_repo     => false,
#         notify          => Exec['set lin no_proxy','set lin resubmit_facts'],
#         require         => Telus_lib::Yum_channel[$puppet6_channel],
#       }

#       exec { 'set lin no_proxy':
#         command => "puppet config set no_proxy 'localhost, 127.0.0.1, ${servername}'",
#         path    => '/opt/puppetlabs/puppet/bin:/bin:/usr/bin:/usr/sbin:/bin',
#         unless  => "puppet config print no_proxy | grep -q ${servername} > /dev/null",
#       }

#       exec { 'set lin resubmit_facts':
#         command => 'puppet config set resubmit_facts true',
#         path    => '/opt/puppetlabs/puppet/bin:/bin:/usr/bin:/usr/sbin:/bin',
#         unless  => 'puppet config print resubmit_facts | grep -q true > /dev/null',
#       }

#     }
#     'windows': {

#       # Run it only on Windows 2012 R2 and newer

#       # if (Float.new($facts['kernelmajversion'])) >= 6.3 {

#       #   file { 'win install file':
#       #     ensure => present,
#       #     path   => "${env_temp_variable}\\puppet-agent-6.11.1-x64.msi",
#       #     source => 'puppet:///software/windows/puppet-agent-6.11.1-x64.msi',
#       #   }

#       #   class {'::puppet_agent':
#       #     absolute_source       => "${env_temp_variable}\\puppet-agent-6.11.1-x64.msi",
#       #     collection            => 'puppet6',
#       #     package_version       => '6.11.1',
#       #     service_names         => ['puppet'],
#       #     manage_repo           => false,
#       #     msi_move_locked_files => true,
#       #     require               => File['win install file'],
#       #     notify                => Exec['set win no_proxy','set win resubmit_facts'],
#       #   }

#       #   exec { 'set win no_proxy':
#       #     command => "cmd.exe /c  puppet config set no_proxy 'localhost, 127.0.0.1, ${servername}'",
#       #     path    => 'C:\Program Files\Puppet Labs\Puppet\bin;C:\Windows\system32',
#       #     unless  => "cmd.exe /c puppet config print no_proxy | findstr.exe ${servername} > nul",
#       #   }

#       #   exec { 'set win resubmit_facts':
#       #     command => 'cmd.exe /c  puppet config set resubmit_facts true',
#       #     path    => 'C:\Program Files\Puppet Labs\Puppet\bin;C:\Windows\system32',
#       #     unless  => 'cmd.exe /c puppet config print resubmit_facts | findstr.exe true > nul',
#       #   }

#       # }
#     }
#     default: { }
#   }
# }


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
ln98430,ln98431,btln000400,btln000401,ln98142,ln98157,btln007235,btln007236,btln007232,btln007233,btln007237
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
lp99422,lp99423,lp99424,lp99415,lp99556,lp99557,lp99558,lp97612,lp97613,lp97825,lp97826,lp97827,lp99414,lp99415,btlp000576,btlp000577,btlp000578,btlp000579,
btlp000580,btlp006251
{
class { 'role::rl_dynatrace_pr': }
}


# lint:endignore
