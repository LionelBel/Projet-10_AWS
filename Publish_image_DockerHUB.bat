## Script de construction de l'image et sa publication dans DockerHub

docker build -t wordpress-custom ./Docker_Image_Wordpress
docker tag wordpress-custom:latest lionelbel/wordpress-custom:latest
docker push lionelbel/wordpress-custom:latest
