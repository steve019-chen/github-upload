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

class profile::pr_base_lin {

  include lvm

  # Limiting deployment of unixadm profile to linux machines in KIDC non prod (btln002494) and SDE master (btln007206)
  # and in future QIDC non prod (btln000197)
  if ($facts['puppet_server'] in ['btln002494.corp.ads','btln007206.corp.ads','btln000197.corp.ads','btlp000336.corp.ads'] )
  { include profile::pr_unixadm }

}
