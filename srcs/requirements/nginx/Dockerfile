FROM alpine:3.16

RUN apk update && apk upgrade
RUN apk add nginx
RUN apk add openssl
RUN openssl req -x509 -days 365 -new -newkey rsa:2048 -batch -nodes -subj "/C=EU/ST=Vaud/L=./CN=localhost" -keyout /etc/ssl/facolomb.key -out /etc/ssl/facolomb.crt

RUN chmod 777 -R etc/ssl
COPY ./conf/nginx.conf /etc/nginx/http.d/

CMD ["nginx", "-g", "daemon off;"]