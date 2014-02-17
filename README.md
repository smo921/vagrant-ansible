== Pre-Requisites ==
* VirtualBox
* Vagrant
* The following Vagrant plugins
  * vagrant-vbguest (0.10.0)
* Ansible

== Tips ==
* Download the VirtualBox Guest Additions ISO to /usr/share/virtualbox/VBoxGuestAdditions.iso to save from downloading it multiple times

== Usage ==
* Clone Repo
  * git clone *REPO NAME*
* Configure User information and SSH Keys
  * Update root users authorized_keys file in 'data/authorized_keys'
  * Edit provisioning/group_vars/all
* Launch Vagrant instance
  * cd *REPO NAME*
  * vagrant up
