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

  # Unixadm profile to all linux machines in 
  # Deployed to: BT KIDC Prod/Non prod, QIDC Prod/Non Prod, Toll, Laird and SDE master
  # Not deployed to: KIDC Tools, QIDC Tools
  if ($facts['puppet_server'] in ['btln002494.corp.ads','btln007206.corp.ads','btln000197.corp.ads','btlp000336.corp.ads','lp99604.corp.ads','lp99605.corp.ads','btlp000966.corp.ads'] )
  { include profile::pr_unixadm }

  # Limiting deployment to : SDE master
  # Not deploying to: QIDC Non Prod, QIDC Prod, QIDC Tools, KIDC Non Prod, KIDC Prod, KIDC Tools, Toll, Laird, 
  if ($facts['puppet_server'] in ['btln007206.corp.ads'] )
  { include profile::pr_svcscan }

  # # CRQ62577 : Tuesday Non Prod deployment
  # # Limiting deployment to : KIDC NP, SDE master
  # # Not deploying to: QIDC Non Prod, QIDC Prod, QIDC Tools, KIDC Prod, KIDC Tools, Toll, Laird
  # if ($facts['puppet_server'] in ['btln002494.corp.ads','btln007206.corp.ads'] )
  # { include profile::pr_svcscan }

  # # CRQ62488 : Tuesday night Prod deployment
  # # Limiting deployment to : KIDC Prod, KIDC NP, Toll, Laird
  # # Not deploying to: QIDC Non Prod, QIDC Prod, QIDC Tools, KIDC Tools
  # if ($facts['puppet_server'] in ['btln002494.corp.ads','btln007206.corp.ads','btlp000336.corp.ads','lp99604.corp.ads','lp99605.corp.ads'] )
  # { include profile::pr_svcscan }

}
# lint:endignore
