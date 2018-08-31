# Class: docker
#
# This class installs docker and its required packages
#
# Parameters:
#
# Actions:
#   - Install required packages
#   - Configure application account
#   - Create application directory
# 
# Prereqs:
#   - Optional, EPEL, and Software Collections channels must be added in Spacewalk
#

class profile::pr_docker {

include docker

}
