# Class: Role <insert name>
#
# This Role defines the profiles required by servers part of the <insert name / project>
#
# Parameters:
#
# Actions:
#   - <insert text>
# 
# Prereqs:
#   - <insert text>
#
class role::rl_initd {

  #All roles should include the base profile
  include profile::pr_base
  include profile::pr_initd
}
