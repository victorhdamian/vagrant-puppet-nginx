exec { 'apt-get update':
  command => '/usr/bin/apt-get update',
  path => '/usr/bin',
}
package { 'nginx': 
    ensure => present,
    require => Exec['apt-get update'],
}
service { 'nginx':
    ensure => running,
    require => Package['nginx'],
}

