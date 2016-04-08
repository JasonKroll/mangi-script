#!/bin/bash
#Sojharo's Development Machine Setup on Ubuntu
#Author : Sojharo
#
# set software sources to server for united states
# VLC from software center
# virtual box from software center
# PDF Mod from software center
# shutter from software center
# kazam from software center
# install unity tweak tool from software center
# install rebar: pull from github (for building erlang applications)

sudo apt-get update
sudo apt-get install build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh
source ~/.profile
sudo nvm install 4.2.3
sudo nvm use 4.2.3
node -v

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start
sudo service mongod status

sudo npm install forever -g

sudo apt-get update
sudo apt-get install git

sudo npm install -g grunt-cli

sudo npm install -g bower

sudo npm install -g yo 

sudo npm install -g gulp-cli

sudo npm install -g generator-angular-fullstack

sudo apt-get install vim curl python-software-properties

sudo apt-get install default-jre
sudo apt-get install default-jdk

sudo apt-get install gimp gimp-data gimp-plugin-registry gimp-data-extras

sudo apt-get install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller

sudo apt-get install filezilla

sudo apt-get remove laptop-mode-tools
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw smartmontools ethtool
sudo tlp start
sudo tlp stat

sudo apt-get install erlang

sudo apt-get install xpad

# KVM acceleration and cpu checker
sudo apt-get install cpu-checker
sudo apt-get install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
sudo apt-get install virt-manager
sudo apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# Calibre - Ebook reader and converter
sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"
