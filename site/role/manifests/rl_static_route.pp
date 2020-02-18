# Class: Role rl_static_route
#
# This Role defines the profiles required by servers part of the Security Vulnerability scan
#
# Parameters:
#   - N/A
# Actions:
#   - Creates static routes
# 
# Prereqs:
#   - Files added to files/securityscanner
#
class role::rl_static_route {

  #All roles should include the base profile
  include profile::pr_base
  include profile::pr_static_route
}
