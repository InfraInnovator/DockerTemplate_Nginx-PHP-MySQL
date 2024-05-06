#!/usr/bin/sh

# service php7.4-fpm start
service php8.3-fpm start
# service php-fpm start
service nginx start

while :
do
	sleep 300
done
