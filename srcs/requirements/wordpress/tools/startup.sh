#!/bin/bash

#Create the folder to enable php start
mkdir /run/php

# DOWNLOAD WORDPRESS
mkdir -p /var/www/html && \
curl -o wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
tar -xzf wordpress.tar.gz -C /var/www/html/ && \
rm wordpress.tar.gz && \   
chown -R root:root /var/www/html

# INSTALL WORDPRESS COMMAND LINE INTERFACE
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

#Connect to the database
cd var/www/html/wordpress/
sed -i "s/username_here/$MARIADB_USER/g" wp-config-sample.php
sed -i "s/password_here/$MARIADB_PASSWORD/g" wp-config-sample.php
sed -i "s/localhost/mariadb-inception/g" wp-config-sample.php
sed -i "s/database_name_here/$MARIADB_DATABASE/g" wp-config-sample.php
cp wp-config-sample.php wp-config.php

# INSTALL WORDPRESS
wp core install --url=$DOMAIN_NAME/ --title=$SITE_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PW --admin_email=$WP_ADMIN_MAIL --skip-email --allow-root
wp user create $WP_USER $WP_USER_MAIL --role=author --user_pass=$WP_USER_PW --allow-root

# START PHP AND WORDPRESS
service php7.4-fpm start
php -S 0.0.0.0:8080 -t /var/www/html/wordpress
