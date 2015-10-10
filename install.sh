#!/bin/bash
#Script to install LAMP
sudo apt-get update
echo "installing"
echo "apache"
sudo apt-get install apache2 -y
echo "mysql"
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql -y
sudo mysql_install_db -y
sudo /usr/bin/mysql_secure_installation
echo "php"
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt -y
echo "IP address"
ifconfig eth0 | grep inet | awk '{ print $2 }'

