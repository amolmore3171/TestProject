apt-get update && apt-get install -y software-properties-common
add-apt-repository "deb http://cran.r-project.org/bin/linux/ubuntu $(lsb_release -cs)/"
apt-get update && apt-get install -y sudo 
apt-get update && apt-get install -y wget
apt-get update && apt-get install -y r-base
apt-get update && apt-get install -y r-base-dev
apt-get update && apt-get install -y r-recommended
apt-get update && apt-get install -y gdebi-core 
wget --no-verbose "https://download2.rstudio.org/rstudio-server-1.1.442-amd64.deb" -O ss-latest.deb && \
gdebi -n ss-latest.deb
EXPOSE 8787
