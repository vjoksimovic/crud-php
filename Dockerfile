FROM nginx:alpine
COPY static /usr/share/nginx/html
RUN apt-get update \
    && docker-php-ext-install pdo pdo_mysql php-fpm