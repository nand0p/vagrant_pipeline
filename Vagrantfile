# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.network "forwarded_port", guest: 9999, host: 9999
  # config.vm.synced_folder "../data", "/vagrant_data"
  # config.vm.provider "virtualbox" do |vb|
  #   vb.memory = "1024"
  # end
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "create.yml"
    ansible.verbose = 'vvvv'
  end
end
