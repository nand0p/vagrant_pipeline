# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "pipeline"
  config.vm.network "forwarded_port", guest: 9999, host: 9999
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "create.yml"
    ansible.verbose = 'vvvv'
    ansible.extra_vars = {
      debug_on: true
    }
  end
end
