#!/bin/bash

# Creo la imagen
docker build -t joseluisgs/php-fpm .

# Lanzo el contenedor
docker run -itd --name php7 \
    --link mariadb \
    -v "/home/informatica/Dropbox/Puertollano 2020-2021/DAW/Temario/docker-tutorial/ejemplos/ejem07/config/php":/usr/local/etc/php \
    -v "/home/informatica/Dropbox/Puertollano 2020-2021/DAW/Temario/docker-tutorial/ejemplos/ejem07/code/myapp":/var/www/html/myapp \
    joseluisgs/php-fpm

# Lo lanzo por si estaba parado
docker start php7