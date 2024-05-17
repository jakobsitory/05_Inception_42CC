FROM debian:bullseye-slim

# INSTALL NECESSARY PACKAGES
RUN apt-get update -y &&\
	apt-get upgrade -y && \
	apt-get install -y mariadb-server

# MkDir for socket and grant rights to mysql user
RUN mkdir -p /run/mysqld / && \
	chown -R mysql:mysql /run/mysqld/

# Copy custom MariaDB configuration
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

ENV MARIADB_DATABASE=$MARIADB_DATABASE \
	MARIADB_USER=$MARIADB_USER \
	MARIADB_PASSWORD=$MARIADB_PASSWORD \
	MARIADB_ROOT_PASSWORD=$MARIADB_ROOT_PASSWORD

# Copy Database Configuration
COPY tools/setup.sh /setup.sh
RUN chmod -R +x /setup.sh

ENTRYPOINT [ "./setup.sh" ]
