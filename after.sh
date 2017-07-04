#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

echo 'export PATH="./vendor/bin:$PATH"' >>  ~/.bashrc
cd ~/Code/waime-server
