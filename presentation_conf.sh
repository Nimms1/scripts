#!/bin/bash
apt-get update
sudo apt-get install curl
curl -sSL https://get.docker.com/ | sh
#Run Docker
docker run --name webp -d -p 8080:8080 -e BUSINESS_IP=businessvminstance.southeastasia.cloudapp.azure.com nijisha/mt-mvn-vr-presentation:3.6.2
