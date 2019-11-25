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
  include profile::pr_remotelogin_group
  include profile::pr_svcscan

  # Unixadm profile to all linux machines in 
  # Deployed to: BT KIDC Prod/Non prod, QIDC Prod/Non Prod, Toll, Laird and SDE master
  # Not deployed to: KIDC Tools, QIDC Tools
  if ($facts['puppet_server'] in ['btln002494.corp.ads','btln007206.corp.ads','btln000197.corp.ads','btlp000336.corp.ads','lp99604.corp.ads','lp99605.corp.ads','btlp000966.corp.ads'] )
  { include profile::pr_unixadm }
}
# lint:endignore
