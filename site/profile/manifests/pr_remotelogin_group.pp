# Class: Profile pr_remotelogin_group
#
# This Profile is in place for the Security team to deploy an account 
# that they can use to connect to all linux machines via an ssh key 
# for doing vulnerability scans
# Parameters: 
#   - None
#
# Actions:
#   - Creates 2 groups : svcscan and remotelogin
#   - Create 1 user : svcscan with SSH access only
# 
# Prereqs:
#   - Jump point server has the required keys
#
class profile::pr_remotelogin_group {

# For reference, as provided by Novo request
# Group: remotelogin gid: 5050
# Approved Novo request: #####
# lint:ignore:140chars
if (( $facts['telus_user_group_winbind'] == '0' and $facts['telus_user_group_sss'] == '1' and $facts['os']['release']['major'] > '5')
or ($facts['os']['release']['major'] == '5' and $facts['telus_user_group_sss'] == '0' and $facts['telus_user_group_winbind'] == '0'))
{

  # Create the remotelogin group
  group { 'remotelogin':
    ensure => present,
    gid    => '5050',
  }
}
else {

  # Don't create the remotelogin group
}

}
# lint:endignore
