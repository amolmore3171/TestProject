#!/bin/bash
apt-get -y update
sudo apt-get -y install r-base gdebi-core libapparmor1
mkdir /data01
cd /data01
sudo wget https://download2.rstudio.org/rstudio-server-pro-1.1.423-amd64.deb
sudo echo "y" | gdebi rstudio-server-pro-1.1.423-amd64.deb

apt-get install openjdk-8*
apt-get install readline*
apt-get install xorg-dev
apt-get install libcurl4-openssl-dev
apt-get install libpango*
apt-get install libcairo*

mkdir -p /opt/R/3.3.1
mkdir -p /opt/R/3.4.1

cd /tmp
wget https://cran.r-project.org/src/base/R-3/R-3.3.1.tar.gz
tar -xvzf R-3.3.1.tar.gz
cd /tmp/R-3.3.1
./configure --prefix=/opt/R/3.3.1 --enable-R-shlib
make
make install

cd /tmp
wget https://cran.r-project.org/src/base/R-3/R-3.4.1.tar.gz
tar -zxvf R-3.4.1.tar.gz
cd /tmp/R-3.4.1
./configure --prefix=/opt/R/3.4.1 --enable-R-shlib
make
make install

rstudio-server stop
rstudio-server start
