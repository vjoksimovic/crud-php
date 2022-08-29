FROM nginx:alpine
RUN apk add php php-fpm
RUN php -v
COPY static /usr/share/nginx/html