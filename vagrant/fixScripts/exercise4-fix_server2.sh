#!/bin/bash

#this command will add server1 to hosts file in order to ssh using name.

sudo -- sh -c "echo 192.168.100.10 server1 >> /etc/hosts"
