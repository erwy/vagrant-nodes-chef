# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "workstation" do |workstation|
    workstation.vm.hostname = "workstation"
    workstation.vm.network :private_network, :ip => "33.33.33.51"
    workstation.vm.box = "canonical-ubuntu-12.04"
    workstation.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
    workstation.vm.provision "shell", path: "setupChefWorkstation.sh"
  end
  config.vm.define "chefnode" do |chefnode|
    chefnode.vm.hostname = "chefnode"
    chefnode.vm.network :private_network, :ip => "33.33.33.52"
    chefnode.vm.box = "canonical-ubuntu-12.04"
    chefnode.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
    chefnode.vm.provision "shell", path: "setupChefNode.sh"
  end
end
