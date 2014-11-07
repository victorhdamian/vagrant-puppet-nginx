    case $operatingsystem {
      'Ubuntu': { 
	exec { "sudo apt-get install nginx":
    	command => "sudo apt-get install nginx",
    	path    => "/usr/local/bin/:/bin/",
	}	
      }
      'CentOS': {   }
      default:  {  }
    }