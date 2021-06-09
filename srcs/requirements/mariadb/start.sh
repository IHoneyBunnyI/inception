rc default

/etc/init.d/mariadb setup

rc-service mariadb start

mysql -u root -e "CREATE DATABASE wordpress;"

mysql -u root -e "CREATE USER 'rvernon'@'%' IDENTIFIED BY 'pass';"

mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'rvernon'@'%';"

mysql -u root -e "FLUSH PRIVILEGES;"

mysql -u root wordpress < wordpress.sql

mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '123';"

rc-service mariadb stop

/usr/bin/mysqld_safe

