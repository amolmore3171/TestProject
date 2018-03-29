#!/bin/bash
Write-Host "apt-get -y update"
apt-get -y update

# install Apache2
Write-Host "apt-get -y install apache2"
apt-get -y install apache2 

# write some HTML
echo \<center\>\<h1\>My Demo App\</h1\>\<br/\>\</center\> > /var/www/html/demo.html

# restart Apache
Write-Host "apachectl restart"
apachectl restart