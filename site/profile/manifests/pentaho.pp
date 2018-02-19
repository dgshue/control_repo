class profile::pentaho{
  user { 'pentaho':
    ensure   => 'present',
    home     => '/home/pentaho',
    password => '!!',
  }
  # create a directory tree, list the directories in order
  # and puppet will 'do the right thing'.
  file { [  '/home/pentaho/', '/home/pentaho/server',
            '/home/pentaho/server/pentaho-server' ]:
    ensure => 'directory',
    owner  => 'pentaho',
    group  => 'pentaho',
  }
  file { '/home/pentaho/.pentaho':
    ensure => 'directory',
    owner  => 'pentaho',
    group  => 'pentaho',
  }
  package { 'java-1.8.0-openjdk':
    ensure => 'installed',
  }
  package { 'java-1.8.0-openjdk-devel':
    ensure => 'installed',
  }
  include postgresql::server
  package { 'xvfb':
    ensure => 'installed',
  }

}
