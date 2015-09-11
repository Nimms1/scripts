#!/bin/bash
apt-get update
curl -qO- https://get.docker.com/ | sh
#Run Docker
docker run --name webp -d -p 8080:8080 -e BUSINESS_IP=devopsbusinessvminstance.southeastasia.cloudapp.azure.com nijisha/mt-mvn-vr-presentation:3.6.2
