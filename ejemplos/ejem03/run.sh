#!/bin/bash

mkdir wordpress

# Creamos la red propia
docker network create mi-network

# Creamos el contenedor para nuestra base de datos
docker run -d --name wordpress-db \
    --net=mi-network \
    --mount source=wordpress-db,target=/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=secret \
    -e MYSQL_DATABASE=wordpress \
    -e MYSQL_USER=manager \
    -e MYSQL_PASSWORD=secret mariadb:10.3.9

# Creamos el contenedor de WordPress
docker run -d --name wordpress \
    --net=mi-network \
    --link wordpress-db:mysql \
    --mount type=bind,source="$(pwd)"/wordpress,target=/var/www/html \
    -e WORDPRESS_DB_USER=manager \
    -e WORDPRESS_DB_PASSWORD=secret \
    -p 8080:80 \
    wordpress:4.9.8

