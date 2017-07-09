#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

#bash path
echo 'export PATH="./vendor/bin:$PATH"' >>  ~/.bashrc
cd ~/Code/waime-server

#postgres + postgis
sudo cp .provision/postgresql/pg_hba.conf /etc/postgresql/9.5/main/pg_hba.conf
sudo service postgresql restart
sudo apt-get update
sudo apt-get install -y postgis
PGPASSWORD=secret psql -U homestead -h localhost -c "CREATE EXTENSION postgis"

