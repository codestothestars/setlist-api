# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  vm = config.vm

  vm.box = "bento/ubuntu-16.04"

  vm.network "forwarded_port", guest: 80, host: 8001

  vm.provision "shell", path: "provision.dev.sh"

  vm.synced_folder "../../../..", "/home/vagrant/go"
  vm.synced_folder ".",           "/vagrant", disabled: true
end
