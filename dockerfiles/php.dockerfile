# NEED a php-fpm image for the Nginx config we're using (ref: https://hub.docker.com/_/php)
FROM php:7.4-fpm-alpine

# standard folder on Web Servers to serve our website from
WORKDIR /var/www/html

# Customize: execute PHP extensions which we need
RUN docker-php-ext-install pdo pdo_mysql