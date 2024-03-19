# FROM alpine:3.19

# RUN	apk update; \
	# apk upgrade
	# apk add wget \
			# php \
			# php-fpm \
			# php-mysql \
			# mariadb-client

FROM debian:bookworm

RUN apt-get update;\
	apt-get upgrade
RUN apt-get install -y \
			wget\
			php7.3\
			php-fpm\
			php-mysql\
			mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN	chown -R root:root /var/www/wordpress