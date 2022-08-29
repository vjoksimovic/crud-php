FROM nginx:alpine
RUN apk add --no-cache php81 php81-fpm php81-opcache && service php81-fpm start
COPY static /usr/share/nginx/html