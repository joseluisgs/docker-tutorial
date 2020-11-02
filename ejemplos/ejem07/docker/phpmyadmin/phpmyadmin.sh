#!/bin/bash

# Lanzo el contenedor
docker run -d --name phmyadmin \
  --link mariadb:db\
  -p 8888:80 \
  phpmyadmin

# Lo lanzo por si estaba parado
docker start phmyadmin