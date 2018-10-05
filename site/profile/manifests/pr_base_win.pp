class profile::pr_base_win {
notify {"Managed by Puppet! Hello World! ":}
service { 'PatrolAgent':
name => 'PatrolAgent',
ensure => 'stopped',
}
}
