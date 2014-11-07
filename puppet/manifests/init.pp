    case $operatingsystem {
      'Ubuntu': { 
	exec { "apt-get install nginx":
    	command => "apt-get install nginx",
    	path    => "/usr/local/bin/:/bin/",
	}	
      }
      'CentOS': {   }
      default:  {  }
    }