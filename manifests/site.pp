node default {

# Puppet agent custom settings

  class { 'puppet_agent_config::puppet_conf': }

# LVM module used for creating non-rootvg filesystems

  class { 'lvm': }

}

node btln-test01,btln-test02,btln-test05,btln-test06,btln001017,btln001526,btln002069 {
  class {'::puppet_agent':
    package_version => '5.5.1',
    service_names   => ['puppet'],
    manage_repo     => false,
  }
}



