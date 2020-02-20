#!/bin/bash
#add fix to exercise6-fix here

#first we check which is the current server, so we can be sure we are sending 

#the files to the other server

this_ip=`ifconfig|xargs|awk '{print $48}'|sed -e 's/[a-z]*:/''/'`
export RECEIVER_IP=192.168.100.10
export SERVER_NUMBER=1


if [[ $this_ip == *"192.168.100.10"* ]]; then
  RECEIVER_IP=192.168.100.11
  SERVER_NUMBER=2
fi

#copy the private key to the .ssh folder to make is easier to send via scp

cp /vagrant/.vagrant/machines/server${SERVER_NUMBER}/virtualbox/private_key ~/.ssh/id_rsa

#add safe permissions

chmod 600 ~/.ssh/id_rsa

location_in_server_1="~"
#variable for folder location via /
IFS='/'
#vairable for total size
total=0

#extracting the last argument
declare -a argv=("$@")
declare argc=$((${#argv[@]}-1))
declare location_in_other_server=${argv[$argc]}
unset argv[$argc]
echo "$location_in_other_server" 
array=( "$@" )

#running the scp command for each organ in the argv array


unset "array[${#array[@]}-1]"    # Removes last element
for i in "${array[@]}"; do
    location_in_server_1+="${i}"
    echo "scp -i ~/.ssh/id_rsa ${i} vagrant@$RECEIVER_IP:#/#$location_in_other_server"
    scp -i ~/.ssh/id_rsa ${i} vagrant@$RECEIVER_IP:$location_in_other_server
    #total="$(stat -c "%s" ${i})"
    total=$(($(stat -c "%s" ${i}) + $total))

done

#print total size of bytes
echo "$total"
