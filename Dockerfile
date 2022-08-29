FROM nginx:alpine
RUN apk add --no-cache php81 php81-fpm
ADD nginx/default.conf /etc/nginx/conf.d
COPY static /usr/share/nginx/html