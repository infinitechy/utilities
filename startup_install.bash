#!/bin/bash

MY_DIR=$(dirname $(readlink -f $0))
$MY_DIR/import_color.bash

# install vscode 
echo "${Red}installing vscode"
echo "------------------------------------------------------------"
sudo apt update -y
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

# install pycharm 
echo "${Red}installing pycharm and snap"
echo "------------------------------------------------------------"
sudo apt-get install snap
sudo snap install pycharm-community --classic

#install docker
echo "${Red}installing docker dependencies"
echo "------------------------------------------------------------"
sudo apt-get update -y
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add –
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo apt install docker-compose

#install docker
echo "${Blue}adding the user to docker group"
echo "------------------------------------------------------------"
sudo groupadd docker
sudo usermod -aG docker ${USER}
sudo chmod 666 /var/run/docker.sock

#install git
echo "${Blue}installing git"
echo "------------------------------------------------------------"
sudo apt install git

#installing cmake and c++ compiler essentials
echo "${Blue}installing cmake and c++ compiler essentials"
echo "------------------------------------------------------------"
sudo apt install build-essential
sudo apt install g++
sudo apt-get -y install cmake


