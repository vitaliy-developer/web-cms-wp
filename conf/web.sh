#!/bin/bash
# /etc/php/7.4/fpm/pool.d/www.conf
apt -y update
apt -y install php7.4 php7.4-cli php7.4-fpm php7.4-json php7.4-pdo php7.4-mysql php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php-pear php7.4-bcmath
chown -R root:nginx /var/lib/php
chown -R nginx: /var/www/wp-cms-project/
chown -R nginx:nginx /run/php/
echo 'listen.owner = nginx' >> /etc/php/7.4/fpm/pool.d/www.conf
echo 'listen.group = nginx' >> /etc/php/7.4/fpm/pool.d/www.conf
service php7.4-fpm restart
apt update && apt install -y net-tools vim htop

