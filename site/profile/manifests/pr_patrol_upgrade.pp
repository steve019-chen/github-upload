# Profile for patrol upgrades
class profile::pr_patrol_upgrade {
    user {'tom':
      shell      => '/bin/bash',
      password   => pw_hash(lookup('tom::app_account_password'), 'SHA-512','mysalt'),
      require    => Group['dynatrace'],
      managehome => true,
    }
}
