#!/bin/bash
docker rmi  miapache-php --force
docker rm   miapache-php
docker build -t  miapache-php .
docker run -dit --name miapache-php -p 5555:80 miapache-php
