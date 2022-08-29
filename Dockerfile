FROM nginx:alpine
RUN apk add --no-cache php81 php81-fpm
RUN php -v
COPY static /usr/share/nginx/html