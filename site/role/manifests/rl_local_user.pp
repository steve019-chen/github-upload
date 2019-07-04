# Class: Role rl_local_user
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
class role::rl_local_user {

  #All roles should include the base profile
  include profile::pr_base
  include profile::pr_local_user
}
