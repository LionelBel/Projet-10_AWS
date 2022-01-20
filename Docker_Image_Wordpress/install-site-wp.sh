#!/bin/sh

# Configuration du site Wordpress
wp core install --allow-root --path=/var/www/html --title=Maîtrisez votre infrastructure cloud --admin_user=Lionel --admin_password=Lionel@77 --admin_email=lionel@bellerose.ovh

# Installation du plugin WP Oflload Media
wp install plugin WP Offload Media --allow-root --path=/var/ww/hmtl/ --activate
