# Image Docker à télécharger
FROM wordpress:lastest

# Dépendances à installer
RUN yum install -y mariadb-client\ 
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \ 
    && chmod +x wp-cli.phar

# Variables d'environnements WordPress à éditer
ENV WORDPRESS_ADMIN_USER: wordpress \
    WORDPRESS_ADMIN_PASSWORD: wordpress \
    WORDPRESS_ADMIN_EMAIL: lionel@bellerose.com \
    WORDPRESS_DB_HOST: wordpress-db.cjfk7eabrj8m.eu-west-3.rds.amazonaws.com \ 
    WORDPRESS_DB_NAME: wordpreess \
    WORDPRESS_DB_USER: wordpress \
    WORDPRESS_DB_PASSWORD: wordpress 


# Port d'écoute
EXPOSE 80
