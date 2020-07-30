# Class: Role Jira
#
# This Role defines the profiles required by servers part of the ASAPNOC project
#
# Parameters:
#
# Actions:
#   - please check pr_jira.pp for more details
# 
# Prereqs:
#   - please check pr_jira.pp for more details
#
# Role for defining Jira project servers 

class role::rl_jira {

  # All roles should include the base profile

  include profile::pr_base
  include profile::pr_jira


}
