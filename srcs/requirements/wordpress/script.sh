
echo "listen=wordpress:9000" >> /etc/php/7.3/fpm/pool.d/www.conf/
mv wordpress /var/www/
chown -R www-data:www-data /var/www/html/
sleep infinity
