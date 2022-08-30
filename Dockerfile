FROM nginx:latest
RUN apt-get update \
    && docker-php-ext-install pdo pdo_mysql \
COPY static/ /var/www/html/ \
