## Pre-Requisites
* VirtualBox
* Vagrant
* The following Vagrant plugins
  * vagrant-vbguest (0.10.0)
* Ansible

## Tips
* Download the VirtualBox Guest Additions ISO to /usr/share/virtualbox/VBoxGuestAdditions.iso to save from downloading it multiple times

## Usage
* git clone https://github.com/smo921/vagrant-ansible.git/
* cd vagrant-ansible/
* Update root users authorized_keys file in 'data/authorized_keys'
* Add/Edit user information in 'provisioning/group_vars/all'
* Launch Vagrant instance
  * vagrant up
