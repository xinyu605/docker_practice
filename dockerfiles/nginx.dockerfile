FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf /etc/nginx/conf.d/

# rename 'nginx/conf' -> 'default.conf'
RUN mv nginx/conf default.conf

WORKDIR /var/www/html

COPY src .
