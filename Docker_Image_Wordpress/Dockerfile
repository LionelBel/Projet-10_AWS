# Image Docker à télécharger
FROM wordpress

# Dépendances à installer
RUN apt update \ 
    && apt upgrade -y \ 
    && apt autoremove \
    && apt install -y \
    mariadb-client \
    vim \
    wget \ 
    && wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \ 
    && php wp-cli.phar --info \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp 
   
# Variables d'environnements WordPress à éditer
ENV WORDPRESS_ADMIN_USER=wordpress \
    WORDPRESS_ADMIN_PASSWORD=wordpress \
    WORDPRESS_ADMIN_EMAIL=lionel@bellerose.com \
    WORDPRESS_DB_HOST=wordpress-db.cjfk7eabrj8m.eu-west-3.rds.amazonaws.com \ 
    WORDPRESS_DB_NAME=wordpreess \
    WORDPRESS_DB_USER=admin \
    WORDPRESS_DB_PASSWORD=wordpress 

# Configuration du Site WordPress
USER www-data
COPY . /var/www/

# Ports d'écoute
EXPOSE 80 

# Commande du container
CMD [ "apache2-foreground" ]  
