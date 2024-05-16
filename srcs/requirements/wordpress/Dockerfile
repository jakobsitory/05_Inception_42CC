# Use debian:bookworm-slim as the base image
FROM debian:bullseye-slim

# Install necessary packages (NGINX, PHP, MariaDB, WordPress dependencies)
RUN apt-get update && \
	apt-get install -y \
			php-fpm \
			php-mysql \
			mariadb-client \
			curl

# Copy PHP-FPM configuration file
COPY conf/www.conf /etc/php/7.4/fpm/pool.d/

#Create the folder to enable php start
RUN mkdir /run/php

# Set up WordPress
RUN mkdir -p /var/www/html && \
    curl -o wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
    tar -xzf wordpress.tar.gz -C /var/www/html/ && \
    rm wordpress.tar.gz && \   
	chown -R root:root /var/www/html

# Expose ports
EXPOSE 9000

# Copy startup script
COPY tools/startup.sh /startup.sh
RUN chmod +x startup.sh

# Copy Wordpress config file
COPY conf/wp-config.php /var/www/html/wordpress/wp-config.php

# Set entrypoint
ENTRYPOINT ["/startup.sh"]
