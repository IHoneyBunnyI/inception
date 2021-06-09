#MARIA_DB

FROM alpine:3.12
VOLUME ["/sys/fs/cgroup"]
RUN apk update && apk upgrade

RUN apk add openrc mysql mysql-client
COPY start.sh /
COPY wordpress.sql /
COPY my.cnf /etc/
RUN chmod +x start.sh
CMD sh start.sh
