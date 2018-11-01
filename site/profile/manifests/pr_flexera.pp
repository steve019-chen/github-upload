# Class: pr_flexera
#
# This class performs Flexera agent Installation and configuration
#

class profile::pr_flexera {
    class { 'flexnet_agent_install': }
    class { 'flexnet_agent_install::route_add': }
    class { 'flexnet_agent_install::install_configure': }
}
