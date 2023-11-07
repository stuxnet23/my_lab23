FROM php:7.4-apache

WORKDIR /var/www/html

RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/ethicalhack3r/DVWA . && \
    rm -rf .git && \
    chmod -R 777 /var/www/html/hackable/uploads
