class { "nginx": 

	file { "/etc/nginx/nginx.conf":
	   replace => "yes", # this is the important property
	   ensure  => "present",
	   content => "user www-data;
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
}",
	}

	file { '/etc/nginx/sites-enable/default':
	   ensure => 'link',
	   target => '/etc/nginx/sites-available/default',
	   require => File['/etc/ssh/sshd_config'],
	}
	
	service { "nginx":
		ensure  => "running",
		enable  => "true",
		require => Package["nginx"],
	}	
	
}