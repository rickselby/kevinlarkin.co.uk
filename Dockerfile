FROM nginx:1-alpine AS nginx

ADD nginx/wordpress-vhost.conf /etc/nginx/conf.d/default.conf

