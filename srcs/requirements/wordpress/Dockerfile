FROM alpine:3.16

RUN apk update && apk upgrade && apk add php8 php8-fpm php8-opcache php8-gd php8-curl php8-mysqli php8-json mariadb-client php-phar php8-mbstring

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz && tar -xzvf wordpress-6.0-fr_FR.tar.gz
RUN sed -i "s|listen = 127.0.0.1:9000|listen = 0.0.0.0:9000|g" /etc/php8/php-fpm.d/www.conf
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar	&& mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/create_wordpress.sh .

CMD ["sh", "create_wordpress.sh"]