#!/bin/bash
apt-get -y update
sudo apt-get -y install r-base gdebi-core libapparmor1
sudo wget https://download2.rstudio.org/rstudio-server-pro-1.1.423-amd64.deb
sudo gdebi ./var/lib/waagent/custom-script/download/0/rstudio-server-pro-1.1.423-amd64.deb

#apt-get -y update
#apt-get -y upgrade
#apt-get -y install r-base
#apt-get -y install gdebi-core
#wget https://download2.rstudio.org/rstudio-server-pro-1.1.423-amd64.deb
#gdebi rstudio-server-pro-1.1.423-amd64.deb
