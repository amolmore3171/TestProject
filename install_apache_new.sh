#!/bin/bash
apt-get -y update

# install Apache2
#apt-get -y install apache2 

# write some HTML
#echo \<center\>\<h1\>My Demo App\</h1\>\<br/\>\</center\> > /var/www/html/demo.html

# restart Apache
#apachectl restart

apt-get -y install docker.io

systemctl start docker
systemctl enable docker

apt-get -y update
apt-get -y install cifs-utils
apt-get -y install nfs-common

#mkdir -p /mnt/dataikufs
#sudo mount -t cifs //tststorageacc02.file.core.windows.net/myshare /mnt/dataikufs -o vers=3.0,username=tststorageacc02,password=nDD+FdyoyiJ+e27Hbz01dBqNbELoalKr8beCr8S9p3AZ/c3cULCvldFgXSNDYzBi9oOwp2P96CijHxUfZLoKbQ==,dir_mode=0777,file_mode=0777,sec=ntlmssp

docker login conacreg01platformpred.azurecr.io --username conacreg01platformpred --password wxaACwC0zIpi8/uCXbJKnv/mQkjcI50i
docker pull conacreg01platformpred.azurecr.io/dataikuimg_v4.2.2:latest
