# Class: Role ASAPNOC
#
# This Role defines the profiles required by servers part of the ASAPNOC project
#
# Parameters:
#
# Actions:
#   - <insert text>
# 
# Prereqs:
#   - <insert text>
#
#Role for defining ASAPNOC project servers 
class role::rl_asapnoc {
  include profile::pr_docker
  include profile::pr_apache

  #All roles should include the base profile
  include profile::pr_base

}
