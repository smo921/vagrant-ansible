#!/bin/bash

apt-get update 2>&1 > /dev/null
apt-get install -y ansible git tmux

mkdir /root/.ssh
cp /vagrant_data/authorized_keys /root/.ssh/authorized_keys
chown root: /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
