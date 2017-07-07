#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

#bash path
echo 'export PATH="./vendor/bin:$PATH"' >>  ~/.bashrc
cd ~/Code/waime-server

#postgres
sudo cp .provision/postgresql/pg_hba.conf /etc/postgresql/9.5/main/pg_hba.conf
sudo service postgresql restart