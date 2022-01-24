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
   
# Variables d'environnements WordPress à éditer pour la base de donnée
ENV WORDPRESS_DB_HOST=wp-database.cjfk7eabrj8m.eu-west-3.rds.amazonaws.com\ 
    WORDPRESS_DB_NAME=wordpress \
    WORDPRESS_DB_USER=wordpress \
    WORDPRESS_DB_PASSWORD=wordpress 

# Configuration du Site WordPress et installation du plugin
USER www-data
COPY . /var/www/

# Ports d'écoute
EXPOSE 80 

# Commande du container
CMD [ "apache2-foreground" ]  
