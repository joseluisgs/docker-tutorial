#!/bin/bash

# Creo el contenedor
docker run -itd --name nginx \
    -v "/home/informatica/Dropbox/Puertollano 2020-2021/DAW/Temario/docker-tutorial/ejemplos/ejem07/config/nginx":/etc/nginx/conf.d \
    -v "/home/informatica/Dropbox/Puertollano 2020-2021/DAW/Temario/docker-tutorial/ejemplos/ejem07/code/myapp":/var/www/html/myapp \
    -v "/home/informatica/Dropbox/Puertollano 2020-2021/DAW/Temario/docker-tutorial/ejemplos/ejem07/logs":/var/log/nginx \
    -p 8080:80 \
    --link php7 nginx

# Lo lanzo por si estaba parado
docker start nginx
