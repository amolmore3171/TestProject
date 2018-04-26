#!/bin/bash
apt-get -y update
apt-get -y install docker.io
systemctl start docker
systemctl enable docker

apt-get -y update
apt-get -y install cifs-utils
apt-get -y install nfs-common

mkdir /users01 /projects01

mount -t cifs //storacct01platformpred.file.core.windows.net/users01 /users01 -o vers=3.0,username=storacct01platformpred,password=xHncT7It2RicG5GQdvPuwIaq5DN0SMPiiYNkJEsgLAg1QmgBS7kfniTs6R0hjNRGr9FnjCY1vRA82J4BwUni3g==,dir_mode=0777,file_mode=0777,sec=ntlmssp
mount -t cifs //storacct01platformpred.file.core.windows.net/projects01 /projects01 -o vers=3.0,username=storacct01platformpred,password=xHncT7It2RicG5GQdvPuwIaq5DN0SMPiiYNkJEsgLAg1QmgBS7kfniTs6R0hjNRGr9FnjCY1vRA82J4BwUni3g==,dir_mode=0777,file_mode=0777,sec=ntlmssp

echo "//storacct01platformpred.file.core.windows.net/users01 /users01 cifs nofail,vers=3.0,username=storacct01platformpred,password=xHncT7It2RicG5GQdvPuwIaq5DN0SMPiiYNkJEsgLAg1QmgBS7kfniTs6R0hjNRGr9FnjCY1vRA82J4BwUni3g==,dir_mode=0777,file_mode=0777,serverino" >> /etc/fstab
echo "//storacct01platformpred.file.core.windows.net/projects01 /projects01 cifs nofail,vers=3.0,username=storacct01platformpred,password=xHncT7It2RicG5GQdvPuwIaq5DN0SMPiiYNkJEsgLAg1QmgBS7kfniTs6R0hjNRGr9FnjCY1vRA82J4BwUni3g==,dir_mode=0777,file_mode=0777,serverino" >> /etc/fstab

#docker login conacreg01platformpred.azurecr.io --username conacreg01platformpred --password wxaACwC0zIpi8/uCXbJKnv/mQkjcI50i
#docker pull conacreg01platformpred.azurecr.io/dataikuimg_v4.2.2:latest
