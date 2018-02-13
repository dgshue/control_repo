class profile::base {
  if $facts['os']['family'] == 'windows' {
    include profile::prod_wsus
  }
  elsif $facts['os']['family'] == 'RedHat' {
    warning('WSUS not needed')
    package { 'htop':
<<<<<<< HEAD
      ensure => 'installed',
      name   => 'htop'
=======
    ensure => 'installed',
>>>>>>> 548ed91d3a75704a522f9615a784fccf296cbdb9
    }
  }
  elsif $facts['osfamily'] == 'Debian' {
    warning('WSUS not needed')
    package { 'htop':
<<<<<<< HEAD
      ensure => 'installed',
      name   => 'htop'
=======
    ensure => 'installed',
>>>>>>> 548ed91d3a75704a522f9615a784fccf296cbdb9
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
