# -*- mode: ruby -*-
# vi: set ft=ruby :

# provider support: virtual box only
# does not support RHEL due to licensing issue

Vagrant.configure("2") do |config|

  config.vm.define "CentOSnginx" do |CentOSnginx|
    CentOSnginx.vm.box = "CentOSnginx"	
    CentOSnginx.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box"
  end

  config.vm.define "Fedoranginx" do |Fedoranginx|
    Fedoranginx.vm.box = "Fedoranginx"
    Fedoranginx.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/fedora-18-x64-vbox4210.box"
  end

  config.vm.define "Debiannginx" do |Debiannginx|
    Debiannginx.vm.box = "Debiannginx"
    Debiannginx.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/debian-607-x64-vbox4210.box"
  end

  config.vm.define "Ubuntunginx" do |Ubuntunginx|
    Ubuntunginx.vm.box = "Ubuntunginx"
    Ubuntunginx.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-10044-x64-vbox4210.box"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.module_path = 'puppet/modules'
    puppet.manifest_file = 'init.pp'
  end

end
