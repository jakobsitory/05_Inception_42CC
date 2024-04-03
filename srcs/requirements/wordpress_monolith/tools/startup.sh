#!/bin/bash

# Start MariaDB
service mariadb start
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'XJ5@cs^3c9$^GBb58e^$';"
mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "CREATE DATABASE IF NOT EXISTS test;"
mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "CREATE USER IF NOT EXISTS 'mysql'@'localhost' IDENTIFIED BY '%i6i!N@%U3sPoGqq23c&';"
mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "GRANT ALL PRIVILEGES ON test.* TO 'mysql'@'%' IDENTIFIED BY '%i6i!N@%U3sPoGqq23c&';"
mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "GRANT ALL PRIVILEGES ON test.* TO 'mysql'@'localhost' IDENTIFIED BY '%i6i!N@%U3sPoGqq23c&';"
mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "FLUSH PRIVILEGES;"
service mariadb restart


service php8.2-fpm start

# Start NGINX
nginx -g 'daemon off;'
