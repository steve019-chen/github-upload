# Class: Role Nodemanager
#
# This Role defines the profiles required by servers part of the 
# Environment management team who are using nodemanager to 
# turn on services on starup
#
# Parameters:
#
# Actions:
#   - Call profile
# 
# Prereqs:
#   - Profile Nodemanager
#   - Files in profile module
#
class role::rl_nodemanager {

  #All roles should include the base profile
  include profile::pr_base
  include profile::pr_nodemanager
}
