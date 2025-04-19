###############################################################################
FROM nginx:1.27.5-alpine AS nginx

ENV NGINX_ENTRYPOINT_WORKER_PROCESSES_AUTOTUNE=1

WORKDIR /code/public

ADD docker/nginx.conf /etc/nginx/conf.d/default.conf

###############################################################################
FROM nginx as web-production

ADD src /code/public
