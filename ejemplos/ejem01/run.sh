#!/bin/bash
docker rmi  -f miapache-php
docker rm   -f miapache-php
docker build -t  miapache-php .
docker run -dit --name miapache-php -p 5555:80 miapache-php
