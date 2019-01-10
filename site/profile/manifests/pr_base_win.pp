class profile::pr_base_win {
notify {"Managed by Puppet! Hello World, this is Alex! ":}
service { 'PatrolAgent':
name => 'PatrolAgent',
ensure => 'stopped',
}
}
