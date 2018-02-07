class profile::test_base {
  class { 'wsus_client':
    server_url             => 'http://rcupdate01.co.randolph.nc.us:8530',
    auto_update_option     => 'Schedule',
    scheduled_install_day  => 'Tuesday',
    scheduled_install_hour => 2,
  }
  contain 'wsus_client'
<<<<<<< HEAD
  service { 'puppet':
      ensure => 'running',
      enable => true,
    }
=======
>>>>>>> f5716d4dd021f6a13e096a1aa03dd022f6565ccf
}
