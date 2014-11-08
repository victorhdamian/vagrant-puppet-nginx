vagrant-puppet-nginx
====================

example machine provisioning with vagrant, puppet, and nginx

Executes
--------

Vagrant: 
creates the box using http://puppet-vagrant-boxes.puppetlabs.com/, 
provisions via puppet, 
Puppet:
unpack installs nginx: CentOS, Fedora, Debian , Ubuntu.
start nginx: sudo service nginx start

Prerequisites
-------------

* [VirtualBox](http://www.virtualbox.org)
* [Vagrant](http://www.vagrantup.com)

Constrains
----------

Does not support RHEL
Does not support Selinux setting preventing 8000 port usage
Does not configure nginx: port 8000, or delivers https://github.com/puppetlabs/exercise-webpage.


Usage
-----

1. Clone this repo into some directory and cd into it
2. vagrant up <machinename>: vagrant up Ubuntunginx
3. SSH to localhost:2222 (or just do "vagrant ssh" if you have a decent host machine like Linux)
