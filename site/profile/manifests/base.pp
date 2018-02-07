class profile::base {
  if $facts['os']['family'] == 'windows' {
    include profile::prod_wsus
  }
  elsif $facts['os']['family'] == 'RedHat' {
    warning('WSUS not needed')
  }
  elsif $facts['osfamily'] == 'Debian' {
    warning('WSUS not needed')
  }
  else {
    #
  }
  service { 'puppet':
      ensure => 'running',
      enable => true,
    }
}
