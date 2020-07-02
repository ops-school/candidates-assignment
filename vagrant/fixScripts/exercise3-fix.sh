#!/bin/bash

#apache http server has policy config file which contains deny all http request from all.

#the following command replace "deny from all" to "allow from all".

#after changing this line we need to restart apache2 service.

sed -i 's/deny from all/Allow from all/i' /etc/apache2/sites-available/default
service apache2 reload
