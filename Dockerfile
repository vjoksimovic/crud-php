FROM nginx:alpine
COPY static /usr/share/nginx/html
CMD apk update && apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl pdo_mysql