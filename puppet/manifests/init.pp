    node default {
      class { 'nginx': }
    }

    node default {
      class { 'nginx': }
      nginx::resource::vhost { 'www.puppetlabs.com':
        ensure   => present,
        www_root => '/var/www/www.puppetlabs.com',
      }
    }
