#!/bin/bash

#install sshpass package.

sudo apt-get install sshpass -y  >> /dev/null

#ssh to server2 with password and ignore certificate verification.

sshpass -p 'vagrant' ssh -o StrictHostKeyChecking=no vagrant@server2
