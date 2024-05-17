# Use debian:bookworm as the base image
FROM debian:bullseye-slim

# Update the package lists
RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y \
			nginx \
			openssl

# Remove the default NGINX configuration
RUN rm /etc/nginx/nginx.conf

# Copy the custom NGINX configuration
COPY /conf/nginx.conf /etc/nginx/nginx.conf

# Create Direction to store and Generate SSL/TLS Certificate
RUN mkdir /etc/nginx/ssl
RUN	openssl req -x509 -nodes -newkey rsa:4096 \
		-keyout /etc/nginx/ssl/nginx.key \
		-out /etc/nginx/ssl/nginx.crt -days 365 \
		-subj "/C=DE/=Berlin/O=42/OU=Berlin/CN=jschott.42.fr/UID=login"

# Expose port 443 for HTTP traffic
EXPOSE 443

# Command to start NGINX
CMD ["nginx", "-g", "daemon off;"]