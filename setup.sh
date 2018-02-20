#!/bin/sh


# add host
echo "vagrant hosts check"

if grep -Fxq "192.168.205.10 ansible-master" /etc/hosts 
then
    echo "vagrant host already exist"
else
	echo "execute add vagrant hosts"
	sudo echo "192.168.205.10 ansible-master" >> /etc/hosts
	sudo echo "192.168.205.11 ansible-worker1" >> /etc/hosts
	sudo echo "192.168.205.12 ansible-worker2" >> /etc/hosts
fi
echo "hosts check done"

# generate private/public key
echo "generate key"
if [ -f "/home/vagrant/.ssh/id_rsa" ]; then
    echo "/home/vagrant/.ssh/id_rsa exists."
else
    ssh-keygen -f /home/vagrant/.ssh/id_rsa -q -P ""
fi
sudo cat /home/vagrant/.ssh/id_rsa.pub
echo "generate key done"
