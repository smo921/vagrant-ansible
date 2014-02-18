## Pre-Requisites
The following must be installed on the system you will be running Vagrant on:
* VirtualBox
* Vagrant
* The following Vagrant plugins
  * vagrant-vbguest (0.10.0)
* Ansible
* The following Ansible Roles from AnsibleGalaxy
  * mivok0.users
  * angstwad.docker_ubuntu

## Tips
* Download the VirtualBox Guest Additions ISO to /usr/share/virtualbox/VBoxGuestAdditions.iso to save from downloading it multiple times
* Set your role path for Ansible so you can install Galaxy add-ons with-out sudo
```cat ~/.ansible.cfg 
[defaults]
roles_path = /home/smo/projects/ansible/roles
```

## Usage
* git clone https://github.com/smo921/vagrant-ansible.git/
* cd vagrant-ansible/
* Update root users authorized_keys file in 'data/authorized_keys'
* Add/Edit user information in 'provisioning/group_vars/all'
* Launch Vagrant instance
  * vagrant up
