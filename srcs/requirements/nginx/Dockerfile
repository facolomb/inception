FROM debian:buster

RUN  apt-get update && \
     apt-get install -y nginx \
     openssl

EXPOSE  443

CMD [ "nginx" , "-g", "daemon off;" ]