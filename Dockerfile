FROM nginx:alpine
COPY static /usr/share/nginx/html
RUN apk update \
    && docker-php-ext-install pdo pdo_mysql php-fpm