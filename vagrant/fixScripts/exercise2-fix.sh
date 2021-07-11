#!/bin/bash
#add fix to exercise2 here

#the soulution is simply to edit out the hosts file, it can be done without vi

#by using sed we can remove the problematic site

sudo sed  -i  's/www.ascii-art.de/a/i' /etc/hosts

# diffrent soulution can be done with vi
#sudo vi /etc/hosts
#and finally remove dns of www.ascii-art.de 127.0.0.1