#!/bin/bash


service mariadb start
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';"
mysql -u root -p\`${MARIADB_ROOT_PASSWORD}\` -e "CREATE DATABASE IF NOT EXISTS '${MARIADB_DATABASE}';"
mysql -u root -p\`${MARIADB_ROOT_PASSWORD}\` -e "CREATE USER IF NOT EXISTS \`${MARIADB_USER}\`@'localhost' IDENTIFIED BY \`${MARIADB_PASSWORD}\`;"
mysql -u root -p\`${MARIADB_ROOT_PASSWORD}\` -e "GRANT ALL PRIVILEGES ON '${MARIADB_DATABASE}'.* TO \`${MARIADB_USER}\`@'%' IDENTIFIED BY \`${MARIADB_PASSWORD}\`;"
mysql -u root -p\`${MARIADB_ROOT_PASSWORD}\` -e "FLUSH PRIVILEGES;"
service mariadb restart


# service mariadb start
# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'XJ5@cs^3c9$^GBb58e^$';"
# mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "CREATE DATABASE IF NOT EXISTS 'test';"
# mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "CREATE USER IF NOT EXISTS 'mysql'@'localhost' IDENTIFIED BY '%i6i!N@%U3sPoGqq23c&';"
# mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "GRANT ALL PRIVILEGES ON test.* TO 'mysql'@'%' IDENTIFIED BY '%i6i!N@%U3sPoGqq23c&';"
# mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "FLUSH PRIVILEGES;"
# service mariadb restart


# mysql_safe --bind.address=0.0.0.0
# mysqldadmin -u root -p 'XJ5@cs^3c9$^GBb58e^$' shutdown
