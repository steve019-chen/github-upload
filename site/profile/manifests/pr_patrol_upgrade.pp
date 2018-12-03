# Profile for patrol upgrades
class profile::pr_patrol_upgrade {
  class { 'patrol_upgrade':
    debug => true,
  }
}
