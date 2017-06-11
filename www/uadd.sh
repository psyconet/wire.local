usrhome=/var/www/html/$1
domain=$1.local
hostname=www.$1.local
ip=192.168.1.101
# Adding New User
useradd $1 -d $usrhome
echo -e "$2\n$2\n" | passwd $1
echo -ne "\nUser $1 created...\n\n" > ../logs/$domain

# Configuring Apache For The New User
mkdir $usrhome/www &>> ../logs/$domain
cp -var ../commonTemplate/* $usrhome/www/ &>> ../logs/$domain
#echo "<center><h1>Hi..I'm $hostname</h1></center>" > $usrhome/www/index.php


chmod +x $usrhome &>> ../logs/$domain
chown $1:$1 -R $usrhome/* &>> ../logs/$domain
chmod 775 $usrhome/* &>> ../logs/$domain
echo -ne "\nFile & Directory Permissions Updated...\n" >> ../logs/$domain
ln -s $usrhome/www $usrhome/public_html &>> ../logs/$domain
echo -ne "\nwww link created...\n" >> ../logs/$domain

apacheconf=/etc/httpd/conf/httpd.conf
echo "<VirtualHost *:80>" >>  $apacheconf
echo "	ServerName $hostname" >>  $apacheconf
echo "	ServerAlias $domain" >>  $apacheconf
echo "	DocumentRoot $usrhome/public_html" >>  $apacheconf
echo "</VirtualHost>" >>  $apacheconf
echo -ne "\nApache Configured...\n" >> ../logs/$domain

# Configuring DNS For The New User

echo "zone \"$domain\" IN {" >> /etc/named.conf
echo "	type master;" >> /etc/named.conf
echo "	file \"$domain\";" >> /etc/named.conf
echo "};" >> /etc/named.conf

touch /var/named/$domain &> /dev/null
chgrp named /var/named/$domain 
chmod 640 /var/named/$domain
echo "\$TTL 1D" >> /var/named/$domain
echo "@	IN SOA	ns2.wire.local.	root.wire.local. (" >> /var/named/$domain
echo "					0	; serial" >> /var/named/$domain
echo "					1D	; refresh" >> /var/named/$domain
echo "					1H	; retry" >> /var/named/$domain
echo "					1W	; expire" >> /var/named/$domain
echo "					3H )	; minimum" >> /var/named/$domain
echo "@	IN	NS	$hostname." >> /var/named/$domain
echo "www	IN	A	$ip" >> /var/named/$domain
echo "mail	IN	A	$ip" >> /var/named/$domain
echo "pma	IN	A	$ip" >> /var/named/$domain
echo -ne "\nDNS Configured...\n" >> ../logs/$domain

# Restart Services
# service named restart &>> ../logs/$domain
# service httpd restart &>> ../logs/$domain
