FROM nginx:alpine
RUN apk add --no-cache php81 php81-fpm
COPY static /usr/share/nginx/html
CMD ["systemctl start php-fpm"]