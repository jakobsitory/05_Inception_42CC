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

# Copy Database Configuration
COPY tools/setup.sh /setup.sh
RUN chmod -R +x /setup.sh && /setup.sh


# START MARIADB
# RUN service mariadb start

EXPOSE 3306

# ENTRYPOINT ["/setup.sh"]
# CMD ["mysqld"]
CMD ["mysqld", "--user=mysql", "--console"]

# Start maria db
# CMD ["mysqld_safe", "--bind.address=0.0.0.0"]
# CMD ["mysqld", "--user=jschott", "--console"]