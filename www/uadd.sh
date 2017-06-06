
# Adding New User
useradd $1
echo -e "$2\n$2\n" | passwd $1


# Configuring Apache For The New User
mkdir /home/$1/www &> /dev/null
echo "<center><h1>Hi..I'm $1.local</h1></center>" > /home/$1/www/index.php

chmod +x /home/$1
chown $1:$1 -R /home/$1/*
chmod 775 /home/$1/*
chmod 664 /home/$1/www/*
ln -s /home/$1/www /home/$1/public_html

apacheconf=/etc/httpd/conf/httpd.conf
echo "<VirtualHost *:80>" >>  $apacheconf
echo "ServerName www.$1.local" >>  $apacheconf
echo "ServerAlias $1.local" >>  $apacheconf
echo "DocumentRoot /home/$1/public_html" >>  $apacheconf
echo "</VirtualHost>" >>  $apacheconf

ip=192.168.8.101
echo "$ip www.$1.local $1.local" >> /etc/hosts

#echo "It may take 5-10 minutes to setup your account."
#service httpd restart &> /dev/null
