# Profile for patrol upgrades
class profile::pr_patrol_upgrade {
    user {'tom':
      ensure     => present,
      shell      => '/bin/tcsh',
      password   => pw_hash(lookup('tom::app_account_password'), 'SHA-512','mysalt'),
      gid        => 'wheel',
      managehome => true,
      forcelocal => true,
    }
}
