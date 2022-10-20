#!/bin/bash

echo "Atualizando o sistema"
apt-get update -y

echo "atualizando"
apt-get upgrade -y

echo "Instalando o Apache"
apt-get install apache2

echo "Instalando o Winzip"
apt-get install unzip -y


cd /tmp

echo "baixando o projeto no githup do professor"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip


echo "descompactando"
unzip main.zip


cd linux-site-dio-main

echo "copiando os arquivos para o diretório do Servidor apache:"
cp -v -R * /var/www/html

