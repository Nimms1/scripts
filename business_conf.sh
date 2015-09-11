#!/bin/bash
apt-get update
curl -qO- https://get.docker.com/ | sh
#Run Docker
docker run --name vapp -d -p 8080:8080 -e DB_IP=devopsdbvminstance.southeastasia.cloudapp.azure.com -e DB_PASSWORD=Welcome123 -e DB_PORT=3306 -e DB=VehicleRental nijisha/mt-vr-business:2.0
