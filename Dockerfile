FROM nginx:alpine
COPY static /usr/share/nginx/html
RUN apk update && apk upgrade && apk add php8 php8-fpm php8-opcache php8-gd php8-zlib php8-curl