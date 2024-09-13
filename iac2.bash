#!/bin/bash 
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
echo "Instalando apache2..."
apt-get install apache2 -y
echo "Instalando unzip..."
apt-get install unzip -y

cd /tmp
echo "Baixando arquivos do projeto..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando arquivos..."
unzip main.zip

echo "Copiando arquivos..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Pronto."


