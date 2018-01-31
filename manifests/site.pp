node default {

# Puppet agent custom settings

  class { 'puppet_agent_config::puppet_conf': }

# LVM module used for creating non-rootvg filesystems

  class { 'lvm': }

}

# January 30, 2018
node tslp000563,tslp000564,tslp000565,tslp000566,tslp000567,tslp000568,tslp000569,tslp000570,tslp000571,tslp000572,tslp000573,tslp000574,btlp000956,ln99039 {
    notify { 'This is Spacewalk migrating manifest from non-default stanza': }
    class { 'spacewalk_migrate': }
    class { 'spacewalk_migrate::route_add': }
    class { 'spacewalk_migrate::registration_switch': }

# Puppet agent custom settings
  class { 'puppet_agent_config::puppet_conf': }

# LVM module used for creating non-rootvg filesystems
  class { 'lvm': }


}
