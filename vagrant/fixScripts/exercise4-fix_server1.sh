#!/bin/bash
#add fix to exercise4-server1 here

#the solution is possible by editing the hosts file and adding the ip op server 2

#sed can be used to edit our hosts file dns like so

sudo sed -i "2i192.168.100.11 server2" /etc/hosts

#all that is left is to ssh