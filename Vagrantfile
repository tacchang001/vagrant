# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.box = "temp"

    # http://stackoverflow.com/questions/22575261/vagrant-stuck-connection-timeout-retrying
    config.ssh.username = "vagrant"
    config.ssh.password = "vagrant"

    #  config.vm.network "private_network", ip: "192.168.58.10"

# Debug for Vagrant
    config.vm.provider "virtualbox" do |vb|
        vb.gui = true
    end
end
