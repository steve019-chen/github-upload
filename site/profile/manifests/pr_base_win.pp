# Class: pr_base_win
#
# This class is the base profile for TELUS Windows servers
#
# Actions:
#   - Ensures services that should not be running are stopped
#   - Ensures services that should be running are started
#   - Includes Admin-<hostname> and Admin-ALLSERVERS domain local groups in local admin
#   - On virtual machindes, increases a basic volume on the last partition of a virtual disk if there is available unallocated disk space
# 
# Prereqs:
#   - Module dylanratcliffe-windows_disk_facts (telus modified version)
#   - Module puppetlabs-powershell
#   - Module puppetlabs-dsc (custom fact powershell_version)
#   - Module telus_lib (custom facts telus_windows_base, telus_windows_local_group_administrators)
#

# lint:ignore:unquoted_node_name lint:ignore:140chars

class profile::pr_base_win {

# # Limiting deployment to : SDE, KIDC Non Prod, QIDC NP, Laird, Toll, KIDC Prod, QIDC Prod
# # Not deploying to: QIDC Tools, KIDC Tools,
if ($facts['puppet_server'] in ['btln007206.corp.ads','btln002494.corp.ads','btln000197.corp.ads','lp99604.corp.ads','lp99605.corp.ads','btlp000336.corp.ads','btlp000966.corp.ads'] )
  { include profile::pr_base_win_temp }
}

# lint:endignore
