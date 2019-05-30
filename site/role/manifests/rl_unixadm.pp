# Class: Role rl_unixadm
#
# This Role defines the profiles required to deploy accounts to all linux machiens
#
# Parameters:
#   - None
# Actions:
#   - Creates 2 groups : unixt4 and remotelogin
#   - Create 1 user : unixt4 with SSH access only
# 
# Prereqs:
#   - Jump point server has the required keys
#
class role::rl_unixadm {

  #All roles should include the base profile
  include profile::pr_base

  include profile::pr_unixadm
}
