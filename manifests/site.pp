node default {

  # Puppet agent custom settings
  class { 'puppet_agent_config::puppet_conf': }

  # LVM module used for creating non-rootvg filesystems
  class { 'lvm': }

# TELUS Lib module used for custom facts and functions
  include telus_lib

}

# lint:ignore:unquoted_node_name lint:ignore:140chars

node btlp007087.corp.ads, btlp007088.corp.ads, btlp007089.corp.ads, btlp007090.corp.ads, btlp007091.corp.ads, btlp007092.corp.ads,
btlp007093.corp.ads, btlp007094.corp.ads, btlp007095.corp.ads, btlp007096.corp.ads, btlp007097.corp.ads, btlp007098.corp.ads,
btlp007099.corp.ads, btlp007100.corp.ads, btlp007101.corp.ads, btlp007102.corp.ads, btlp007103.corp.ads, btlp007104.corp.ads,
btlp007105.corp.ads, btlp007106.corp.ads {
class { 'role::rl_bcg_shannon': }
}

node ln99670{
class { 'role::rl_dynatrace': }
}

#20180703 - ROFS many IDCs - Puppet 5 Upgrade 
node ln98987.corp.ads,ln98988.corp.ads,ln98989.corp.ads,ln99045.corp.ads,ln99056.corp.ads,lp97019.corp.ads,lp97301.corp.ads,
lp97315.corp.ads,lp97513.corp.ads,lp97831.corp.ads,lp97854.corp.ads,lp97897.corp.ads,lp97922.corp.ads,lp97949.corp.ads,lp97950.corp.ads,
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
