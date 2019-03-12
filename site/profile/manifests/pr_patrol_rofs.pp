# Profile for patrol ROFS module
class profile::pr_patrol_rofs {
  class { 'patrol_rofs':
    debug => true,
  }
}
