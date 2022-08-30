FROM nginx:latest
RUN apt update \
    && docker-php-ext-install pdo pdo_mysql
COPY static/ /var/www/html/
