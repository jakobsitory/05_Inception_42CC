#!/bin/bash

# service mariadb start
# mysql -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;"
# mysql -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"
# mysql -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
# mysql -e "FLUSH PRIVILEGES;"
# mysqladmin -u root -p $MYSQL_ROOT_PASSWORD shutdown
# exec mysqld_safe


service mariadb start
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'XJ5@cs^3c9$^GBb58e^$';"
mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "CREATE DATABASE IF NOT EXISTS test;"
mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "CREATE USER IF NOT EXISTS 'jschott'@'localhost' IDENTIFIED BY '%i6i!N@%U3sPoGqq23c&';"
mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "GRANT ALL PRIVILEGES ON test.* TO 'jschott'@'%' IDENTIFIED BY '%i6i!N@%U3sPoGqq23c&';"
mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "GRANT ALL PRIVILEGES ON test.* TO 'jschott'@'localhost' IDENTIFIED BY '%i6i!N@%U3sPoGqq23c&';"
mysql -u root -p'XJ5@cs^3c9$^GBb58e^$' -e "FLUSH PRIVILEGES;"
service mariadb restart
# mysqldadmin -u root -p 'XJ5@cs^3c9$^GBb58e^$' shutdown
# exec mysqld_safecd 