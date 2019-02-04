# Class: pr_diversio
#
# This class installs and configures NGINX for Diversio project
#

class profile::pr_diversio {"nginx":}
package { [
 'nginx'
  ]:
  ensure   => 'v1.14.2 ',
  provider => 'yum',
}
#