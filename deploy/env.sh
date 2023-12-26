#!/bin/bash
set -e

sudo apt update

# ntp lvm2
echo Y | sudo apt install ntpsec -y 
sudo apt install lvm2 -y

# docker 
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce -y

# cephadm 
chmod +x cephadm
sudo cp cephadm /usr/local/bin/
sudo cephadm add-repo --release octopus

# network
sudo apt install iproute2 iperf -y

sudo apt install sshpass -y

