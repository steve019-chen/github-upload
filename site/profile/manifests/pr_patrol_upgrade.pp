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
    file {'/home/tom/.ssh':
      ensure  => directory,
      mode    => '0700',
      owner   => 'tom',
      group   => 'wheel',
      require => User['tom'],
    }
    file {'/home/tom/.ssh/authorized_keys':
      ensure  => present,
      content => 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAwbUT+ZDKlhwCmV58p5vPppPHe7k0USppu3Vf2o4f/+3f501wP0NBjXzeuPem0j6AJb6Ku4S58queYI6/HizGsYngdqzxwk4GlPSxJqTGmsUsVvlmGWY5v7Vx+V+a3qD6butJ4gs2BJIqXwpIPGz+/py+pl447oKS2+DGMLTD25O+B2JrLr/RGD9riE+j+PBv3dI4EPpjl4XeoJo2lRkyYDm+RshGBpSuWn2WpCFcQJQVsp+BsjziTfwRoPuD07A5JRHiIsaYwI/c9ul48QZc7GFkQT0ysXExD5v+WQzMN0mRfkGjYtxNYz3xeGr0tr2/sC7CQqjiVKPXACfUYHXWGw== t823517@L007352',
      mode    => '0600',
      owner   => 'tom',
      group   => 'wheel',
      require => File['/home/tom/.ssh'],
    }
}
