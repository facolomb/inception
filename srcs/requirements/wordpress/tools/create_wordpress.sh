#!/bin/sh

if [ -f ./wp-config.php]
then
  echo "wordpress already downloaded"
else
  wget http://wordpress.org/latest.tar.gz
  tar xfz latest.tar.gz
  mv wordpress/* .
  rm -rf latest.tar.gz
  rm -rf wordpress

  sed -i "s/username_here/test/g" wp-config-sample.php
  sed -i "s/password_here/test/g" wp-config-sample.php
  sed -i "s/localhost/mariadb/g" wp-config-sample.php
  sed -i "s/database_name_here/test/g" wp-config-sample.php
  cp wp-config-sample.php wp-config.php
fi

exec "$@"