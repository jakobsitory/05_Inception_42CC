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

# Copy startup script and make executable
COPY tools/startup.sh /startup.sh
RUN chmod +x startup.sh

# Set entrypoint
ENTRYPOINT ["/startup.sh"]
