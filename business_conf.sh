#!/bin/bash
apt-get update
sudo apt-get install curl
curl -sSL https://get.docker.com/ | sh
#Run Docker
docker run --name vapp -d -p 8080:8080 -e DB_IP=dbvminstance.southeastasia.cloudapp.azure.com -e DB_PASSWORD=Welcome123 -e DB_PORT=3306 -e DB=VehicleRental nijisha/mt-vr-business:2.0
