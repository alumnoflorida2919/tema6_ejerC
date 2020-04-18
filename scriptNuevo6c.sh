mkdir /home/juan
mkdir /home/juan/bootstrap
mkdir /etc/tema6-c
apt-get update
apt-get install apache2
cd /etc/apache2
sed -i 's/80/90/g' "ports.conf"
cd /etc/apache2/sites-available
sed -i 's/80/90/g' "000-default.conf"
sed -i "s%/var/www/html%/home/juan/bootstrap/%g" "000-default.conf"
git clone https://github.com/alumnoflorida2919/tema6_ejerC.git /etc/tema6-c
/etc/init.d/networking restart 