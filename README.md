vagrant-puppet-nginx
====================

example machine provisioning with vagrant, puppet, and nginx

Prerequisites
-------------

* [VirtualBox](http://www.virtualbox.org)
* [Vagrant](http://www.vagrantup.com)

Usage
-----

1. Clone this repo into some directory and cd into it
2. Edit the Vagrantfile. The only thing that might need changing is the shared source folder. Have it point to some folder on your host machine that contains an index.php file.
3. vagrant up
4. Visit http://localhost:8080
5. SSH to localhost:2222 (or just do "vagrant ssh" if you have a decent host machine like Linux)
