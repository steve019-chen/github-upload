# Class: pr_base
#
# This class is the base profile for TELUS servers
#
# Actions:
#   - Applies the telus puppet agent configuration
#   - Applies the telus_lib module that contains facts, functions and providers
#   - Assigns profiles based on kernel, Windows and Linux
# 
# Prereqs:
#   - Module telus-puppet_agent_config
#   - Module telus-telus_lib
#

class profile::pr_base {

  # common modules that need to be present on all nodes

  include puppet_agent_config::puppet_conf
  include telus_lib

  # also include the O/S specific profile as appropriate for each platform

  case $facts['kernel'] {
    'Linux':   { include profile::pr_base_lin }
    'windows': { include profile::pr_base_win }
    default:   { fail("Unrecognized O/S kernel ${facts['kernel']} ") }
  }

}
