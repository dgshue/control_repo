node default {

}

node 'rcforeman01.co.randolph.nc.us' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}, this is a machine.\n",
    }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
