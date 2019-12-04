# Class: pr_base_lin
#
# This class is the base profile for TELUS Linux servers
#
# Actions:
#   - Creates additional VG, LV(s) and filesystems based on host specific Hiera data
# 
# Prereqs:
#   - Module puppetlabs-lvm
#
# lint:ignore:unquoted_node_name lint:ignore:140chars
class profile::pr_base_lin {

  include lvm
  include profile::pr_base_lin_accounts

}
# lint:endignore
