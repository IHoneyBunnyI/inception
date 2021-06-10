rc default

/etc/init.d/mariadb setup

rc-service mariadb start

mysql -u root --skip-password -e "CREATE DATABASE wordpress;"

mysql -u root --skip-password -e "CREATE USER $MYSQL_ROOT_USER@'%' IDENTIFIED BY $MYSQL_ROOT_PASSWORD;"

mysql -u root --skip-password -e "GRANT ALL PRIVILEGES ON wordpress.* TO $MYSQL_ROOT_USER@'%';"

mysql -u root --skip-password -e "FLUSH PRIVILEGES;"

mysql -u root wordpress < wordpress.sql

mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY $MYSQL_ROOT_PASSWORD;"

rc-service mariadb stop

/usr/bin/mysqld_safe

