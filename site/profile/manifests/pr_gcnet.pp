# Class: pr_gcnet
#
# This profile is for GCNet servers
#
# Actions:
#   - Modify SSHD config to remediate security vulnerabilities
#

class profile::pr_gcnet {


  case $facts['os']['release']['major'] {
    '6':  {
            $kexalgorithms = ['diffie-hellman-group-exchange-sha256','diffie-hellman-group14-sha1']
            $ciphers       = ['aes128-ctr','aes192-ctr','aes256-ctr']
            $macs          = ['hmac-sha1','umac-64@openssh.com','hmac-sha2-256','hmac-sha2-512','hmac-ripemd160',
                              'hmac-ripemd160@openssh.com']
          }
    '7':  {
            $kexalgorithms = ['curve25519-sha256','curve25519-sha256@libssh.org','ecdh-sha2-nistp256','ecdh-sha2-nistp384',
                              'ecdh-sha2-nistp521','diffie-hellman-group-exchange-sha256','diffie-hellman-group16-sha512',
                              'diffie-hellman-group18-sha512','diffie-hellman-group14-sha256','diffie-hellman-group14-sha1']
            $ciphers       = ['chacha20-poly1305@openssh.com','aes128-ctr','aes192-ctr','aes256-ctr','aes128-gcm@openssh.com',
                              'aes256-gcm@openssh.com']
            $macs          = ['umac-64-etm@openssh.com','umac-128-etm@openssh.com','hmac-sha2-256-etm@openssh.com',
                              'hmac-sha2-512-etm@openssh.com','hmac-sha1-etm@openssh.com','umac-64@openssh.com',
                              'umac-128@openssh.com','hmac-sha2-256','hmac-sha2-512','hmac-sha1']
          }
    default: { fail('These changes are only supported on Oracle Linux 6, and 7') }
  }


  sshd_config { 'KexAlgorithms':
    ensure  => present,
    comment => 'managed by Puppet',
    value   => $kexalgorithms,
    notify  => Service['sshd'],
  }

  sshd_config { 'Ciphers':
    ensure  => present,
    comment => 'managed by Puppet',
    value   => $ciphers,
    notify  => Service['sshd'],
  }

  sshd_config { 'Macs':
    ensure  => present,
    comment => 'managed by Puppet',
    value   => $macs,
    notify  => Service['sshd'],
  }

  service { 'sshd':
    ensure => 'running',
  }

}
