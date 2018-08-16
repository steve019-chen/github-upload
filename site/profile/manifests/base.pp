# Class: base
#
# This class is the base profile for TELUS servers
#
# Parameters:
#
class profile::base {

  #the base profile should include component modules that will be on all nodes
  class { 'puppet_agent_config::puppet_conf': }
  include lvm
  include telus_lib

}
