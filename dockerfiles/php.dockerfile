# NEED a php-fpm image for the Nginx config we're using (ref: https://hub.docker.com/_/php)
FROM php:7.4-fpm-alpine

# standard folder on Web Servers to serve our website from
WORKDIR /var/www/html

COPY src .

# Customize: execute PHP extensions which we need
RUN docker-php-ext-install pdo pdo_mysql

# Change ownership (of a file or folder) to has write access to this folder
# 'www-data' is default user created by php image
RUN chown -R www-data:www-data /var/www/html