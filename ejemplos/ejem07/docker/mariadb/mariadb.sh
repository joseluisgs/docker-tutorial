#!/bin/bash

# Creo la imagen
docker build -t joseluisgs/mariadb .

# Lanzo el contenedor
docker run -d --name mariadb -p 3306:3306 \
    -v "/home/informatica/Dropbox/Puertollano 2020-2021/DAW/Temario/docker-tutorial/ejemplos/ejem07/mariadb/data:/var/lib/mysql" \
    joseluisgs/mariadb

# Lo lanzo por si estaba parado
docker start mariadb