class profile::base {
  class { 'wsus_client':
    server_url             => 'http://rcupdate01.co.randolph.nc.us:8530',
    auto_update_option     => 'Download',
    scheduled_install_day  => 'Tuesday',
    scheduled_install_hour => 2,
  }
  contain 'wsus_client'

}
