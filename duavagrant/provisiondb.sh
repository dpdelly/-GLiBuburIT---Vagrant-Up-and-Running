echo "Installing Mysql and setting it up..."
echo -n "" > /etc/apt/sources.list
echo "deb http://kambing.ui.ac.id/ubuntu/ trusty main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://kambing.ui.ac.id/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://kambing.ui.ac.id/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://kambing.ui.ac.id/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://kambing.ui.ac.id/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list
apt-get update 
apt-get upgrade
export DEBIAN_FRONTEND=noninteractive
apt-get install -y  mysql-server
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf
service mysql restart
mysql -uroot mysql <<< "GRANT ALL ON *.* TO 'root'@'%'; FLUSH PRIVILEGES;"
