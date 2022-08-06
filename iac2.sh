#!/bin/bash 

echo "Atualizar servidor"
apt-get update
apt-get upgrade -y

echo "instalar apache2"
apt-get install apache2 -y

echo "instalar unzip"
apt-get install unzip -y 

echo "baixar aplicação"
cd /tmp
apt-get install wget -y
wget http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


