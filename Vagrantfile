# -*- mode: ruby -*-
# vi: set ft=ruby :

SYNCED_FOLDER_DIR = unless ENV['DOCKER_VM_SYNCED_FOLDER'].nil?
                      ENV['DOCKER_VM_SYNCED_FOLDER']
                    else
                      'docker'
                    end

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    # vb.memory = "2048"
    # vb.cpus = "2"
  end
  config.vm.network "private_network", ip: "192.168.56.1"
  config.vm.synced_folder SYNCED_FOLDER_DIR, "/home/vagrant/docker"
  config.vm.provision "docker"
  config.vm.provision "shell", path: "provisioning.sh"
end
