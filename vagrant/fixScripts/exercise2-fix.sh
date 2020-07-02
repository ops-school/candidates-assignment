#!/bin/bash

#hosts file contains www.ascii-art.de which forward it to local host.

#the following command will remove this line from hosts file.

sudo sed -i '/127.0.0.1 www.ascii-art.de/d' /etc/hosts
