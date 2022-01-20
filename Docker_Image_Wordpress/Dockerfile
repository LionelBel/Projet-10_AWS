# Image Docker à télécharger
FROM wordpress

# Dépendances à installer
RUN apt update \ 
    && apt upgrade -y \ 
    && apt install -y mariadb-client \ 
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \ 
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
RUN wp core install --title=Maîtrisez votre infrastructure cloud --admin_user=Lionel --admin_password=Lionel@77 --admin_email=lionel@bellerose.ovh


# Ports d'écoute
EXPOSE 80 

# Commande du container
CMD [ "apache2-foreground" ]  
