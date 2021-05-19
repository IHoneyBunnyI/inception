#NGINX

FROM alpine:3.12

RUN apk update && apk upgrade && apk add nginx \
										 openssl

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21Moscow/CN=rvernon" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

COPY ./nginx.conf ./etc/nginx/conf.d/default.conf
RUN mkdir run/nginx/

CMD nginx -g "daemon off;"
