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

mkdir /mnt/dataikufs
mount -t cifs //testdataikufs0001.file.core.windows.net/test /mnt/dataikufs -o vers=3.0,username=testdataikufs0001,password=idmzqB3NnKcdAZAgfGK9abSMJwiRumln7Yzc4dTR79p6AgxbuY/SPR9QVOm9miuu8Hx/vKumgUo9Ukfes+fvvw==,dir_mode=0777,file_mode=0777,sec=ntlmssp
