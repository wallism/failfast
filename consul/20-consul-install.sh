#!/bin/bash
echo ***
echo *** $(hostname)
echo *** install consul 
echo ***
# resource: https://www.digitalocean.com/community/tutorials/how-to-configure-consul-in-a-production-environment-on-ubuntu-14-04

CONSULZIP="consul_0.7.5_linux_amd64.zip"
echo $PWD
cd /usr/local/bin
echo $PWD

ls

if [ -f consul ]
then
	echo "consul already downloaded"
else
	echo "downloading $CONSULZIP"
	sudo wget https://releases.hashicorp.com/consul/0.7.5/$CONSULZIP
	sudo unzip *.zip
	sudo rm *.zip
fi

echo "add consul user"
sudo adduser consul

echo "create common config structure"
sudo mkdir -p /etc/consul.d/{bootstrap,server,client}

echo "create data dir"
sudo mkdir /var/consul
sudo chown consul:consul /var/consul

