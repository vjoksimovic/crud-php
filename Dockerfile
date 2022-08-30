FROM richarvey/nginx-php-fpm
COPY static/ /var/www/html
RUN rm /var/www/html/index.html
