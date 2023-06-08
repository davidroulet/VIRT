apt update -y
apt install git mariadb-server -y

git clone https://github.com/7ric/Photoblog.git
mv ./Photoblog /var/www/
chown -R www-data:www-data /var/www/Photoblog

mysql -u root -p  < /var/www/Photoblog/photoblog.sql

FILE="/etc/apache2/sites-available/000-default.conf"
cat <<EOM >$FILE
<VirtualHost *:80>

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/Photoblog

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined

</VirtualHost>
EOM


sed -i 's/display_errors = Off/display_errors = On/' /etc/php/7.4/apache2/php.ini
sed -i 's/disable_function/#disable_function/' /etc/php/7.4/apache2/php.ini