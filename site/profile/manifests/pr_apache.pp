# Class: apache
#
# This class installs apache
#
# Parameters:
#
# Actions:
#   - Install required packages
# 
#

class profile::pr_apache {

class { 'apache':
}

}
