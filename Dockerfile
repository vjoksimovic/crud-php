FROM nginx:alpine
RUN apk add --no-cache php81 php81-fpm php81-opcache
RUN php-fpm
COPY static /usr/share/nginx/html