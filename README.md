vagrant-puppet-nginx
====================

example machine provisioning with vagrant, puppet, and nginx

Executes
--------

Vagrant: creates a vm box using http://puppet-vagrant-boxes.puppetlabs.com/; 
Puppet: unpack installs nginx: CentOS, Fedora, Debian , Ubuntu;
nginx:
a) the nginx server serves requests over port 8000
b) the default site serve a page with the content of the following repository: https://github.com/puppetlabs/exercise-webpage.  

Prerequisites
-------------

* [VirtualBox](http://www.virtualbox.org)
* [Vagrant](http://www.vagrantup.com)

Constrains
----------

Does not support RHEL;
Does not support Selinux setting preventing 8000 port usage;

Usage
-----

1. Clone this repo into some directory and cd into it
2. vagrant up machinename: vagrant up Ubuntunginx
3. vagrant ssh machinename: vagrant ssh Ubuntunginx
