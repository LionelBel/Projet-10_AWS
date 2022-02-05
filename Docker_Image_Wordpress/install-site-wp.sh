#!/bin/sh

# Configuration du site Wordpress
wp core install --allow-root --path=/var/www/html --url=$1 --title=Maîtrisez_votre_infrastructure_cloud --admin_user=Lionel --admin_password=Lionel@77 --admin_email=lionel@bellerose.ovh

# Installation du plugin WP Oflload Media
wp plugin install amazon-s3-and-cloudfront --allow-root --path=/var/www/html --activate
