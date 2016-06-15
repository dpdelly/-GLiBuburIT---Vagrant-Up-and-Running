echo "Installing Apache and setting it up..."
echo -n "" > /etc/apt/sources.list
echo "deb http://kambing.ui.ac.id/ubuntu/ trusty main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://kambing.ui.ac.id/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://kambing.ui.ac.id/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://kambing.ui.ac.id/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://kambing.ui.ac.id/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list
apt-get update 
apt-get upgrade
apt-get install -y apache2 
rm -rf /var/www
ln -fs /vagrant /var/www
