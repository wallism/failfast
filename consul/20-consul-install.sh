#!/bin/bash
echo ***
echo *** $(hostname)
echo *** install consul 
echo ***

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

echo add consul user
sudo adduser consul

