class { "nginx": 

	file { "/etc/nginx/nginx.conf":
	   replace => "yes", # this is the important property
	   ensure  => "present",
	   content => "
user www-data;
worker_processes 1;

error_log  /var/log/nginx/error.log;
pid        /var/run/nginx.pid;

events {
  worker_connections 1024;
  
}

http {
  include       /etc/nginx/mime.types;
  default_type  application/octet-stream;

  access_log  /var/log/nginx/access.log;

  sendfile    on;

  

  keepalive_timeout  65;
  tcp_nodelay        on;

   
  gzip         on;
  gzip_disable "MSIE [1-6]\.(?!.*SV1)";
  
 
  include /etc/nginx/conf.d/*.conf;
  include /etc/nginx/sites-enabled/*;
}
	   
	   ",
	}

	file { "/etc/nginx/sites-available/default":
	   replace => "yes", # this is the important property
	   ensure  => "present",
	   content => "
server {
	listen   8000 default;
	server_name  localhost;

	access_log  /var/log/nginx/localhost.access.log;

	location / {
		root   /var/www/nginx-default;
		index  index.html index.htm;
	}

	location /doc {
		root   /usr/share;
		autoindex on;
		allow 127.0.0.1;
		deny all;
	}

	location /images {
		root   /usr/share;
		autoindex on;
	}
}	   
	   ",
	}

	file { "/var/www/nginx-default/index.htm":
	   replace => "yes", # this is the important property
	   ensure  => "present",
	   content => "
<meta http-equiv="refresh" content="0; url=https://github.com/puppetlabs/exercise-webpage" />	   
	   ",
	}
	
	file { '/etc/nginx/sites-enable/default':
	   ensure => 'link',
	   target => '/etc/nginx/sites-available/default',
	   require => File['/etc/nginx/nginx.conf'],
	}
	
	service { "nginx":
		ensure  => "running",
		enable  => "true",
		require => Package["nginx"],
	}	
	
}