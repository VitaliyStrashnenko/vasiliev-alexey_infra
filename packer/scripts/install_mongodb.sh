#!/bin/bash
set -e

# Install MongoDB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0xd68fa50fea312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update
apt-get install -y mongodb-org
systemctl enable mongod