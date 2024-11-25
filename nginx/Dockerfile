FROM nginx:alpine

RUN apk add --no-cache \
    nginx-module-image-filter \
    bash \
    gettext && \
    mkdir -p /var/www/html /var/www/app

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY dop.conf /etc/nginx/nginx.conf
COPY html/ /var/www/html/

RUN chown -R nginx:nginx /var/www 
#&& \
#    apk add --no-cache openssl && \
#    mkdir -p /etc/ssl/certs /etc/ssl/private && \
#    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
#    -keyout /etc/ssl/private/nginx.key \
#    -out /etc/ssl/certs/nginx.crt \
#    -subj "/C=RU/ST=Region/L=City/O=Company/OU=Department/CN=kek.zapto.org"

    ENV PORT=80

    EXPOSE $PORT
    
    CMD ["/bin/sh", "-c", "envsubst '$PORT' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf.tmp && mv /etc/nginx/conf.d/default.conf.tmp /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]

