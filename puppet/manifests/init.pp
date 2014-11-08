class { "nginx": }
nginx::resource::vhost { 'default':
    ensure   => present,
    www_root => '/var/www/nginx-default',
    ssl      => 'true',
    ssl_cert => '/tmp/server.crt',
    ssl_key  => '/tmp/server.pem',
}
