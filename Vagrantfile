# -*- mode: ruby -*-
# vi: set ft=ruby :

# provider support: virtual box only
# does not support RHEL due to licensing issue

Vagrant.configure("2") do |config|

  config.vm.define "CentOSnginx" do |nc|
    nc.vm.box = "CentOSnginx"	
    nc.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box"
  end

  config.vm.define "Fedoranginx" do |nf|
    nf.vm.box = "Fedoranginx"
    nf.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/fedora-18-x64-vbox4210.box"
  end

  config.vm.define "Debiannginx" do |nd|
    nd.vm.box = "Debiannginx"
    nd.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/debian-607-x64-vbox4210.box"
  end

  config.vm.define "Ubuntunginx" do |nu|
    nu.vm.box = "Ubuntunginx"
    nu.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-10044-x64-vbox4210.box"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.module_path = 'puppet/modules'
    puppet.manifest_file = 'init.pp'
  end

end
