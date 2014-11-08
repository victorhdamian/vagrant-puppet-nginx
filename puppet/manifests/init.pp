class { "nginx": }

	file { "/etc/nginx/nginx.conf":
	   replace => "yes", # this is the important property
	   ensure  => "present",
	   content => template("exercise/templates/nginx.conf.erb"),
	}

	file { "/etc/nginx/sites-available/default":
	   replace => "yes", # this is the important property
	   ensure  => "present",
	   content => template("exercise/templates/default.erb"),
	   require => File['/etc/nginx/nginx.conf'],
	}

	file { "/var/www/nginx-default/index.htm":
	   replace => "yes", # this is the important property
	   ensure  => "present",
	   content => template("exercise/templates/index.htm.erb"),
	   require => File['/etc/nginx/sites-available/default'],
	}
	
	file { '/etc/nginx/sites-enable/default':
	   ensure => 'link',
	   target => '/etc/nginx/sites-available/default',
	   require => File['/var/www/nginx-default/index.htm'],
	}
	
	service { "nginx":
		ensure  => "running",
		enable  => "true",
		require => File['/etc/nginx/sites-enable/default'],
	}	