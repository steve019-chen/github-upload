# Class: Role ASAPNOC
#
# This Role defines the profiles required by servers part of the ASAPNOC project
#
# Parameters:
#
# Actions:
#   - please check pr_asapnoc.pp for more details
# 
# Prereqs:
#   - please check pr_asapnoc.pp for more details
#
# Role for defining ASAPNOC project servers 

class role::rl_asapnoc {

  # All roles should include the base profile

  include profile::pr_base
  include profile::pr_asapnoc


}
