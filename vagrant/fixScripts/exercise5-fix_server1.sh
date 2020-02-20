#!/bin/bash
#in order to connect without password we first need to locate the current key that is created by vagrant

#after vagrant is up, we can locate the config for vagrant with 

#vagrant ssh-config

#identify the location of the Identity File

#and use the private key in order to ssh with hostKeyChecking disabled
sudo cat /vagrant/.vagrant/machines/server1/virtualbox/private_key

#server 1 is set up before server 2 so..


# since we cannot ssh to a non existent server yet the connection string will be commented out

###########cp /vagrant/.vagrant/machines/server2/virtualbox/private_key ~/.ssh/id_rsa

###########sudo ssh -i /vagrant/.vagrant/machines/server1/virtualbox/private_key -o StrictHostKeyChecking=no vagrant@192.168.100.11



