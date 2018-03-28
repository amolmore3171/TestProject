apt-get -y update
apt-get -y upgrade
add-apt-repository ppa:marutter/rrutter
apt-get -y update
apt-get -y install r-base
apt-get -y install apache2
apt-get -y install gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.1.383-amd64.deb
gdebi rstudio-server-1.1.383-amd64.deb
EXPOSE 80 443