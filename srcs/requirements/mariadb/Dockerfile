FROM alpine:3.16

RUN apk update && apk add mariadb mariadb-client
RUN mkdir /run/mysqld; \
		chmod 777 /run/mysqld;

COPY ./tools/mariadb.sh .

CMD ["sh", "/mariadb.sh"]