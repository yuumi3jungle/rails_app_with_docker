FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD default  /etc/nginx/sites-available/default

EXPOSE 80
VOLUME  ["/var/log/nginx"]

ENTRYPOINT /bin/sed -i "s/[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+/${APP_PORT_3000_TCP_ADDR}/" \
  /etc/nginx/sites-available/default &&\
  /usr/sbin/nginx

