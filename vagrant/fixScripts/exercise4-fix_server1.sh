#!/bin/bash

#this command will add server2 to hosts file in order to ssh using name.

sudo -- sh -c "echo 192.168.100.11 server2 >> /etc/hosts"
