#!/bin/bash
apt-get update
echo sudo docker stop webp >> /home/docker/update.sh
echo sudo docker rm webp >> /home/docker/update.sh
echo sudo service docker restart >> /home/docker/update.sh
echo sudo docker run --name webp -d -p 8080:8080 -e BUSINESS_IP=businessvminstance.southeastasia.cloudapp.azure.com $1 >> /home/docker/update.sh 
sudo apt-get install curl
curl -sSL https://get.docker.com/ | sh
#Run Docker
docker run --name webp -d -p 8080:8080 -e BUSINESS_IP=businessvminstance.southeastasia.cloudapp.azure.com nijisha/mt-mvn-vr-presentation:3.6.2
