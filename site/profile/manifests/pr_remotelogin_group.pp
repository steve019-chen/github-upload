# Class: Profile pr_remotelogin_group
#
# This Profile is in place for managing the remotelogin group for Linux machines
# The group can only exist on machines with Ldap (validated through telus_user_group_sss fact) 
# The group can NOT exist on machines connected to Winbind (validated through telus_user_group_winbind fact)
# Rhel 5 servers with LDAP do not work with remotelogin group due to bug
# https://bugzilla.redhat.com/show_bug.cgi?id=1358881 
#
# Parameters: 
#   - None
#
# Actions:
#   - Creates 1 groups : remotelogin
# 
# Prereqs:
#   - telus_user_group_sss fact
#   - telus_user_group_winbind fact
#
class profile::pr_remotelogin_group {

# For reference, as provided by Novo request
# Group: remotelogin gid: 5050
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
