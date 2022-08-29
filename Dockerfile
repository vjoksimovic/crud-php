FROM nginx:alpine
RUN apk add --no-cache php81 php81-fpm
COPY static /usr/share/nginx/html

FROM php:fpm-alpine
WORKDIR /usr/share/nginx/html
RUN apk add icu-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-configure intl && docker-php-ext-install intl