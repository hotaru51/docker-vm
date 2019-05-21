# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    # vb.memory = "2048"
    # vb.cpus = "2"
  end
  config.vm.network "private_network", ip: "192.168.1.101"
  config.vm.synced_folder "docker/", "/home/vagrant/docker"
  config.vm.provision "shell", path: "provisioning.sh"
end
