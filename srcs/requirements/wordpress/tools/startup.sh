#!/bin/bash

# echo "hello wordpress"
# service php8.2-fpm status
service php8.2-fpm start
# service php8.2-fpm status

php -S 0.0.0.0:8080 -t /var/www/html/wordpress
