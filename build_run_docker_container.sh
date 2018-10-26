#!/usr/bin/env bash

container_name="${1-ashwani_webserver}"

#Build Docker Container
sudo docker build -t $container_name .
#Run Docker Container
sudo docker run -p 4000:80 $container_name


