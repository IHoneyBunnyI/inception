#NGINX

#docker inspect -f "{{ .RestartCount }}" <container_id> //чтобы проверить перезапуск
# docker exec nginx pkill -9 nginx
FROM alpine:3.12

RUN apk update && apk upgrade && apk add nginx \
										 openssl

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21Moscow/CN=rvernon" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

COPY ./chmod.sh /
COPY ./nginx.conf ./etc/nginx/conf.d/default.conf
RUN mkdir run/nginx/

CMD sh chmod.sh

