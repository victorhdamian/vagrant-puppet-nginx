class { 'nginx': 

	file { "/var/www/":
	    ensure => "directory",	    
	}

	file { "/var/www/www.puppetlabs.com":
	    replace => "no", # this is the important property
	    ensure  => "present",
	    mode    => 644,
            require => File['/var/www/'],
	}

}

nginx::resource::vhost { 'www.puppetlabs.com':
  www_root => '/var/www/www.puppetlabs.com',
  
}
