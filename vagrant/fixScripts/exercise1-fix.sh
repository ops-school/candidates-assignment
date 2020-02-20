#!/bin/bash
#add fix to exercise1 here
#within the bootstrap file. the encoded encryption sets a 
#static route for the adress of textfiles 
#like so ip route add 208.86.224.90/32   dev eth0 src 192.168.100.10
#so 2 solutions are available
#first one is the change the encryption
#second is the change the ip route like so...
echo "display all routes"
route -n
echo " delete static route"
sudo route del -net 208.86.224.90 gw 0.0.0.0 netmask 255.255.255.255 dev eth0

