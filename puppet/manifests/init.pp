class { "nginx": }
nginx::resource::vhost { 'test2.local':
    ensure   => present,
    www_root => '/var/www/nginx-default',
    ssl      => 'true',
    ssl_cert => '/tmp/server.crt',
    ssl_key  => '/tmp/server.pem',
}