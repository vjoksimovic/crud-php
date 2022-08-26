FROM nginx:alpine
COPY static /usr/share/nginx/html
CMD apk update && apk add --no-cache php