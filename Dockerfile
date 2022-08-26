FROM nginx:alpine
COPY static /usr/share/nginx/html
RUN apk add php