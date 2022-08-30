FROM richarvey/nginx-php-fpm
RUN apk update && apk install -y php php-cli php-fpm php-json php-mysql php-zip php-gd  php-mbstring php-curl php-xml php-pear php-bcmath
COPY static/ /var/www/html