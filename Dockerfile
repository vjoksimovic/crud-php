FROM nginx:alpine
RUN apk add --no-cache php81 php81-fpm php81-opcache
CMD ["/bin/bash", "-c", "php-fpm8"]
COPY static /usr/share/nginx/html