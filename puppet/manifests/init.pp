class { "nginx": } ->

#TODO
#support for 
#  'Fedora': {} root 
#  'CentOS': {} root /usr/share/nginx/html
#  'Debian': {} root /var/www;
#  'Redhat': {}
#   default: {} 

case $operatingsystem {
  'Ubuntu': {
    file { '/var/www/nginx-default/index.html':
      replace => "yes",
      ensure  => file,
      content => '<meta http-equiv="refresh" content="0; url=https://github.com/puppetlabs/exercise-webpage" />',
    }     
  } 
}