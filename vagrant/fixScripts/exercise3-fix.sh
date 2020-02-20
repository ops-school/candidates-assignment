#!/bin/bash
#add fix to exercise3 here

#the solution lies inside the the sites available folder

#/etc/apache2/sites-available/default

# we have an instruction that denies incoming traffic

#the simple solution is to change every line that specifies deny from all

#to allow from all

#we can use sed to remove the problomatic statement and then reload the server

 sudo sed  -i 's/deny from all/allow from all/i' /etc/apache2/sites-available/default

 sudo service  apache2 reload
  #then...
  #service  apache2 reload    


