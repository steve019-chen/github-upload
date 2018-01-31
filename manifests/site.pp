node default {

# Puppet agent custom settings

  class { 'puppet_agent_config::puppet_conf': }

# LVM module used for creating non-rootvg filesystems

  class { 'lvm': }

}

