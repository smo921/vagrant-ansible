# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

hosts = [ 'sandbox' ]

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  hosts.each do |host|
    config.vm.define host do |host|
      host.vm.hostname = "sandbox"
      host.vm.box = "precise64"
  
      host.vm.box_url = "http://files.vagrantup.com/precise64.box"
  
      host.vm.network :public_network
      host.vm.synced_folder "data", "/vagrant_data"

      host.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", "2048"]
      end

      host.vm.provision "shell" do |shell|
        shell.path = "provisioning/pre-provision.sh"
      end
      host.vm.provision "ansible" do |ansible|
        ansible.playbook = "provisioning/playbook.yml"
        ansible.host_key_checking = false
	##ansible.verbose = "vvvv"
      end
    end
  end
end
