class { 'nginx': }
nginx::resource::vhost { 'www.puppetlabs.com':
  www_root => '/var/www/',
}