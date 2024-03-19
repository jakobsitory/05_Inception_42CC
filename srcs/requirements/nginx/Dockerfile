FROM alpine:3.19

# INSTALL NECESSARY PACKAGES
RUN apk update; \
	apk upgrade; \
	apk add nginx; \
	apk add vim; \
	apk add openssl; \
	apk add curl

# CONFIGURE SSL/TLS
RUN mkdir -p /etc/nginx/ssl; \ 
	openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=login.42.fr/UID=login"

# CONFIGURE ACCESS RIGHTS
RUN mkdir -p /var/run/nginx
RUN mkdir -p /var/www/html
RUN	chmod 755 /var/www/html
# RUN addgroup -S www-data
RUN adduser -S www-data -G www-data
RUN	chown -R www-data:www-data /var/www/html 

# LAUNCH NGINX IN FOREGROUND
CMD [ "nginx", "-g", "daemon off;" ]

# COPY CONFIG TO NGINX
COPY conf/nginx.conf /etc/nginx/nginx.conf

# EXPOSED

# ENTRYPOINT