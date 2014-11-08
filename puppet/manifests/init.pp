class { "nginx": }
#todo
#enable default site
  nginx::resource::location { 'exersice':
    ensure   => present,
    www_root => '/var/www/nginx-default',
    location => '/nginx-default',
    vhost    => 'exersice',
  }
#edit index.html
#<meta http-equiv="refresh" content="0; url=https://github.com/puppetlabs/exercise-webpage" />
