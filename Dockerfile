FROM nginx:alpine
RUN apk add --no-cache php81 php81-fpm
CMD ["systemctl start php-fpm"]
COPY static /usr/share/nginx/html