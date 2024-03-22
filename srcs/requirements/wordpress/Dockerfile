# FROM alpine:3.19

# RUN	apk update; \
	# apk upgrade
	# apk add wget \
			# php \
			# php-fpm \
			# php-mysql \
			# mariadb-client

FROM debian:bookworm-slim

RUN apt-get update;\
	apt-get upgrade
RUN apt-get install -y \
			curl\
			php8.2\
			php-fpm\
			php-mysql\
			mariadb-client\
			nginx

# Configure PHP-FPM
COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

# RUN wget https://wordpress.org/latest.tar.gz -P /var/www
# RUN cd /var/www && tar -xzf latest.tar.gz && rm latest.tar.gz
# RUN	chown -R root:root /var/www/wordpress

# Download and install WordPress
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
    tar -xzf wordpress.tar.gz -C /var/www/html/ && \
    rm wordpress.tar.gz 

# Give Rights to www-data
RUN chown -R www-data:www-data /var/www/html/wordpress && \
    find /var/www/html/wordpress/ -type d -exec chmod 755 {} \; && \
    find /var/www/html/wordpress/ -type f -exec chmod 644 {} \;

# Copy custom Nginx configuration REMOVE
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Copy custom PHP configuration
# COPY conf/php.ini /etc/php/8.2/fpm/php.ini

# Copy WordPress initialization script
COPY tools/init_wordpress.sh /init_wordpress.sh
RUN chmod +x /init_wordpress.sh

# Expose ports
EXPOSE 80

# Set entrypoint to initialize WordPress
ENTRYPOINT ["/init_wordpress.sh"]