#!/bin/bash

## Installation et configuration de Docker sur instance vierge Amazon Linux 2 AMI (HVM)
sudo yum update -y
sudo amazon-linux-extras install docker
       ########################
### Configuration image réalisée avec Apache2 et Docker d'installé ###
## Désactivation du service httpd
#sudo systemctl stop httpd.service
#sudo systemctl status httpd.service
#sudo systemctl disable httpd.service
       #######################
## Demarrage du service docker
sudo systemctl enable docker
sudo systemctl start docker.service
#sudo systemctl status docker.service
## Mise en place de notre container WordPress personnalisé
docker pull lionelbel/wordpress-custom
#docker images -a
docker run --name=wordpress -d -p 80:80 lionelbel/wordpress-custom:latest 
## Excécution du script de configuration du site 
docker exec wordpress -it /var/www/install-site-wp.sh 