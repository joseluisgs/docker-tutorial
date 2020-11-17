#!/bin/bash
docker rmi  -f miapache-php
docker rm   -f miapache-php
docker build -t  miapache-php .
# Copiando los datos, de manera estática
# docker run -dit --name miapache-php -p 5555:80 miapache-php
# Montando enlanzado directorios
docker run -dit --name miapache-php -p 5555:80 --mount type=bind,source="$PWD/src",target=/var/www/html miapache-php
# Creando un volumen y almancenando los datos en él
# Deberíamos pasar o copiar la información al volumen
# docker run -dit -p 5555:80 --name miapache-php --mount type=volume,source=vol-miapache-php,target=/var/www/html miapache-php
# Compartimos el mismo volumen entre varios contenedores
# docker run -dit -p 7777:80 --name miapache-php-2 --mount type=volume,source=vol-miapache-php,target=/var/www/html miapache-php
# Podemos verlo copiando los datos de a uno que es visible en el otro
# docker cp src/index.html miapache-php:/var/www/html

