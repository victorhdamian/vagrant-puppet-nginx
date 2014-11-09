class { "nginx": } ->
#todo
#enable default site
#edit index.html
#<meta http-equiv="refresh" content="0; url=https://github.com/puppetlabs/exercise-webpage" />
file { '/var/www/nginx-default/index.html':
  replace => "yes",
  ensure  => file,
  content => '<meta http-equiv="refresh" content="0; url=https://github.com/puppetlabs/exercise-webpage" />',
}