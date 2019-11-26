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

class profile::pr_base_win_temp {

  # set array of services to be disabled by kernelmajversion
  # set array of services to be enabled and running by kernelmajversion

  # common services for all known windows versions (2008 R2, 2012 R2, 2016)

  # by default, puppet will apply the manifest in the order listed, so place dependent services in the required order in the array, e.g.:
  # 'RasMan' cannot disabled before 'RemoteAccess', so 'RemoteAccess' must appear before 'RasMan' in the array

  $common_disabled_services = ['Audiosrv',
                              'RasAuto',
                              'RemoteAccess',
                              'RasMan',
                              'SCardSvr']

  $common_enabled_services = ['SNMP',
                              'WinRM']

  # modify arrays for OS version specific services

  case $facts['kernelmajversion'] {
    '6.1':    { $disabled_services = $common_disabled_services
                $enabled_services = $common_enabled_services
              } # 2008 R2
    '6.3':    { $disabled_services = $common_disabled_services
                $enabled_services = $common_enabled_services
              } # 2012 R2
    '10.0':   { $disabled_services = $common_disabled_services
                $enabled_services = $common_enabled_services
              } # windows 2016 and 2019
    default:  { $disabled_services = []
                $enabled_services = []
              } # Unkown value in kernelmajversion

  }

  # Commenting out until facts are collected for the running services
  # disable services

  # service { $disabled_services:
  #   ensure => 'stopped',
  #   enable => false,
  # }

  # # enable services

  # service { $enabled_services:
  #   ensure => 'running',
  #   enable => true,
  # }

  # add domain local groups to local administrators group (if it exists) in corp.ads and corp.sidclab

  if $facts['telus_windows_local_group_administrators'] {
    case $trusted['domain'] {
      'corp.ads':      { $localadmin = ["TELUS\\Admin-${trusted['hostname']}", "TELUS\\Admin-ALLSERVERS"] }
      'corp.sidclab':  { $localadmin = ["corp\\Admin-${trusted['hostname']}", "corp\\Admin-ALLSERVERS"] }
      default:         { $localadmin = [] }
    }

    # set group members 

    group { 'Administrators':
      members  => $localadmin
    }
  }

  # expands basic disk partititions on virtual disks if there is available space
  # assumes that the last partition number is the same as the number of partitions
  # valid partitions have the following properties:
  #   - largest_free_extent > 1048576 (this means there is more than 1 MB of space on the disk that is not part of a volume)
  #   - model =~ /Virtual disk/ (this excludes CD drives and other removable devices)
  #   - is_offline != true (excludes offline disks)
  #   - if the partition_style is "GPT", number_of_partitions > 1 (a basic disk with an existing volume will have at least 2 partitions)
  #   - if the partition_style is "MBR", number_of_partitions > 0 (a basic disk with an existing volume will have at least 1 partitions)
  #
  # excludes physical machines
  # excludes windows versions below 2012 R2
  # requires powershell version 3 or higher

  if (($facts['is_virtual']) and
    (Numeric.new($facts['kernelmajversion']) >= 6.3) and
    (Integer.new(($facts['powershell_version'])[0]) >= 3)) {

    # $facts['disks'] returns a hash of hashes. $mydisk below coverts the hash to two element array:
    #   - element 0 is the disk number
    #   - element 1 is a hash of facts

    $mydisks = $facts['disks']

    if $mydisks {
      $mydisks.each | Array $mydisk | {
        if (($mydisk[1]['largest_free_extent'] > 1048576) and
          ($mydisk[1]['model'] =~ /Virtual disk/) and
          (!$mydisk[1]['is_offline']) and
          ($mydisk[1]['number_of_partitions'] > 0)) {

          if ((($mydisk[1]['partition_style'] =~ /GPT/) and ($mydisk[1]['number_of_partitions'] > 1)) or
            (($mydisk[1]['partition_style'] =~ /MBR/) and ($mydisk[1]['number_of_partitions'] > 0))) {

            $disk = $mydisk[0]
            $partition = $mydisk[1]['number_of_partitions']

            exec { "extend-volume ${disk}":
              command  => "Get-Partition -disknumber ${disk} -partition ${partition} | Resize-Partition -Size (Get-PartitionSupportedSize -disknumber ${disk} -partition ${partition}).SizeMax",
              onlyif   => "Get-Partition -disknumber ${disk} -partition ${partition} | Resize-Partition -Size (Get-PartitionSupportedSize -disknumber ${disk} -partition ${partition}).SizeMax -WhatIf",
              provider => powershell,
            }
          }
        }
      }
    }
  }
}

# lint:endignore
