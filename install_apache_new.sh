#!/bin/bash
apt-get -y update

# install Apache2
apt-get -y install apache2 

# write some HTML
echo \<center\>\<h1\>My Demo App\</h1\>\<br/\>\</center\> > /var/www/html/demo.html

# restart Apache
apachectl restart

apt-get -y install docker.io

systemctl start docker
systemctl enable docker

apt-get -y update
apt-get -y install cifs-utils
apt-get -y install nfs-common
