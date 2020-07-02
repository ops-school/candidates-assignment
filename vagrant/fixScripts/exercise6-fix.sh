#!/bin/bash

#check num of command variables
if [ $# -lt 2 ]
then
        echo 'please enter more ther one path'
else

#check hostnme server
if [ $HOSTNAME = "server1" ]
then
        #install openssh and change user vagrant privilage
        sshpass -p vagrant ssh vagrant@server2 sudo apt-get install openssh-client openssh-server -y >> /dev/null
        sshpass -p vagrant ssh vagrant@server2 sudo usermod -aG sudo vagrant
        secondServer='server2'
else
        sshpass -p vagrant ssh vagrant@server1 sudo apt-get install openssh-client openssh-server -y >> /dev/null
        sshpass -p vagrant ssh vagrant@server2 sudo usermod -aG sudo vagrant
        secondServer='server1'
fi

#assign command variables to array
varArray=( "$@" )
sum=0
for i in "${varArray[@]}"
do
        #ignor the last cell
        if [ $i = ${varArray[-1]} ]
        then
                break
        else
        #copy files to remote server
        sshpass -p 'vagrant' scp -o StrictHostKeyChecking=no $i vagrant@$secondServer:${varArray[-1]}
        sum=$(($(stat -c "%s" ${i}) + $sum))
        fi

done
echo $sum
fi
