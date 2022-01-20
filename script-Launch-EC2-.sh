#!/bin/bash

# L'image réalisée a Apache2 et Docker d'installé
# Désactivation du service httpd
sudo systemctl stop httpd.service
sudo systemctl status httpd.service
sudo systemctl disable httpd.service
# Demarrage du service docker
sudo systemctl start docker.service
sudo systemctl status docker.service
# Mise en place de notre container WordPress personnalisé
docker pull lionelbel/wordpress-custom
docker images -a
docker run --name=wordpress -d -p 80:80 lionelbel/wordpress-custom:latest 
docker exec wordpress -it /var/www/Install-WP.sh