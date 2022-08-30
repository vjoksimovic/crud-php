FROM richarvey/nginx-php-fpm
COPY static/ /var/www/html
CMD ["rm /var/www/html/index.html"]
