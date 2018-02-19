class profile::dmz {
  if $facts['os']['family'] == 'windows' {
    service { 'TermService':
      ensure => 'stopped',
      enable => false,
    }
  }
  elsif $facts['os']['family'] == 'RedHat' {

  }
  elsif $facts['osfamily'] == 'Debian' {

  }
  else {
    #
  }
}
