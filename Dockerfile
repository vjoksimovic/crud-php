FROM nginx:alpine
RUN apk add --no-cache php81 php81-fpm
COPY static /usr/share/nginx/html
ADD nginx/default.conf /etc/nginx/conf.d