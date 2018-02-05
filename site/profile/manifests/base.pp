class profile::base {
  user {'admin':
    ensure => present,
   }
 package { 'puppet-lint':
   ensure   => '1.1.0',
   provider => 'gem',
 }
}
