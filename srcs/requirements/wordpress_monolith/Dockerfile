# Use debian:bookworm-slim as the base image
FROM debian:bookworm-slim

# Install necessary packages (NGINX, PHP, MariaDB, WordPress dependencies)
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nginx \
			php-mysql php-fpm mariadb-client curl \
			mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy NGINX configuration file
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Set up WordPress
RUN mkdir -p /var/www/html && \
    curl -o wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
    tar -xzf wordpress.tar.gz -C /var/www/html/ && \
    rm wordpress.tar.gz && \
    chown -R www-data:www-data /var/www/html

# Expose ports
EXPOSE 8080

# Copy startup script
COPY tools/startup.sh /startup.sh
RUN chmod +x startup.sh

# Set entrypoint
ENTRYPOINT ["/startup.sh"]
