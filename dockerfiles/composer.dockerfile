# ref: https://hub.docker.com/_/composer
FROM composer:latest

WORKDIR /var/www/html

# It ensure we can run this without any warnings or errors 
# even if some dependencies would be missing 
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]