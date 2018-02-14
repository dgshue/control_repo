class profile::test_base {
  if $facts['os']['family'] == 'windows' {
    include profile::test_wsus
    if $facts['iis_version'] {
        warning('Has IIS, including base IIS config')
        include profile::iis
    }
    # create Scripts directory
    file { 'C:/Scripts':
      ensure => 'directory',
    }
  }
  elsif $facts['os']['family'] == 'RedHat' {
    warning('WSUS not needed')
    package { 'htop':
      ensure => 'present',
      name   => 'htop'
    }
  }
  elsif $facts['osfamily'] == 'Debian' {
    warning('WSUS not needed')
    package { 'htop':
      ensure => 'present',
      name   => 'htop'
    }
  }
  else {
    #
  }
  service { 'puppet':
      ensure => 'running',
      enable => true,
    }
}
