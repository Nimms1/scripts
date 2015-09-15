sudo docker stop webp
sudo docker rm webp
service docker restart
sudo docker run --name webp -d -p 8080:8080 -e BUSINESS_IP=businessvminstance.southeastasia.cloudapp.azure.com $1
