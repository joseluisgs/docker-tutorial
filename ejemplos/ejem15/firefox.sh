#!/bin/bash
docker build -t firefox-app . 
docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" firefox-app