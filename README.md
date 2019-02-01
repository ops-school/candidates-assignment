# OpsSchool candidates assignment

### FIRST AND MOST IMPORTANT GUIDLINE
#### Read the instructions, go step by step and perform the instructions as written, it is crutial for your success
#### for instance: if you submit your answers in master branch it will not pass the automated tests and will fail!!
lets start,

#### INTRO
Hello and welcome to opsSchool home assignment.

In this assignment you will be asked to configure a virtual environment and to troubleshoot some basic issues in that environment.
Please read the following instructions before starting to implementation, you don't want to miss any important instruction.

#### Get your environment ready
You'll need a local machine (laptop/desktop) with the ability to run vms.

1. Install [VirtualBox](<https://www.virtualbox.org/>) .
1. Install [Vagrant](<https://www.vagrantup.com/>) .
1. Mirror this git repo using the instructions [here](https://help.github.com/articles/duplicating-a-repository). Then clone it locally. (**Please DO NOT fork this repo!!! **)
1. cd to the vagrant directory in the repo  - candidates-assignment/vagrant.
1. create a branch winter2019 and make all your changes in that branch
1. Run `vagrant up` and make sure you can ssh into both machines from your repo directory using `vagrant ssh server1` and `vagrant ssh server2`

* for vagrant assistance see [vagrant docs](https://www.vagrantup.com/docs/)
* for git baseics see [source control and git](https://www.youtube.com/watch?v=0K7H1IZYBbY&list=PL5RUAh-dTK1_-j7BHEe9t9Z_TMuNUq2n6)

Now your environment is set and you can start the exercises.
there are two servers running:

name|server1|server2
----|-------|-------
ip  |172.16.0.10|172.16.0.10.11

Important note: the infrastructure should work out of the box. There's no hidden part of the exercise in which you need to debug vagrant/virtualbox.

#### Ready for action?

Great.  
This exercise is simple, as an Operations Engineer you may run into production issues, in the first task you will jump start a Linux server, you will need to solve three issues that we encountered
#### exercise1:
in server 1, 
Run the following command "curl http://www.textfiles.com/art/bnbascii.txt"
What went wrong?
Please fix the issue and add the command that fixes the issue to  `exercise1-fix.sh`

#### Exercise2:
in server 1, 
Run the following command "curl http://www.ascii-art.de/ascii/ab/007.txt"
What went wrong?
Please fix the issue and add the command that fixes the issue to  `exercise2-fix.sh`

#### Exercise3:
open your browser, go to http://172.16.0.10/

We expect to see a message from opsSchool.
What do you get?
Please fix it.
Please fix the issue and add the command that fixes the issue to  `exercise3-fix.sh`.


#### Exercise4:
We would like to ssh between the servers using their names rather than their ips.
Please add the option to ssh between the two servers using names (server1 and server2).

* `exercise4-fix_server1.sh`
* `exercise4-fix_server2.sh`

* in order to test this, run `vagrant ssh server1` and from their you should be able to run `ssh server2` to the second server.

#### Exercise5:
At times one would like to ssh between servers with out typing a password or the need to approve new servers,
Please add the needed configuration in order to ssh password-less from server1 to sever2 and without host key checking.
Script to update configuration should be put in the following files.

* `exercise5-fix_server1.sh`
* `exercise5-fix_server2.sh`

#### Deliverables
A GitHub Pull-Request to **YOUR DUPLICATED REPO**, containing all the scripts mentioned above with the solutions to the exercises.

PLEASE make sure your Pull Request contains all the requirements above, and doesn't contain any code you didn't change.

The Pull-Request should contain a file with your name and email (contact-details.txt) 

all fix scripts should be under vagrant/fixScripts

#### General Guidelines
Your code should be as simple as possible.
Your code should be tested by running "vagrant destroy" and "vagrant up" and see all fixes and tasks are implemented.

please be aware that we automatically test this assignment, so if it does not work for you when you run the above, the automatic tests will not pass

After completion please fill up this [form](https://goo.gl/forms/De2fMjDx57cZRl8H2) with all the relevant details

