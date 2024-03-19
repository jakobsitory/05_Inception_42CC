# FROM alpine:3.19

# INSTALL NECESSARY PACKAGES
# RUN apk update; \
	# apk upgrade; \
	# apk add mysql; \
	# apk add openrc


FROM debian:bookworm

# INSTALL NECESSARY PACKAGES
RUN apt-get update -y;\
	apt-get upgrade -y; \
	apt-get install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# CMD "./tools/setup.sh"