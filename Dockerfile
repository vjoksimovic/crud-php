FROM nginx:alpine
RUN apk add --no-cache php81 php81-fpm
RUN systemctl start php-fpm
COPY static /usr/share/nginx/html