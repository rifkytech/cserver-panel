
echo "Welcome To Installation cServer Panel v1.0 on Your Debian Server"
echo ""
echo ""
echo "Installing Web Server, Mysql, PHP, DNS, vsftpd..............."
echo "Warning !! Install Web Server & Mysql Use Tasksel, Please Choice Lampp Server To Install"
echo "."
echo "."
echo "."
echo "."

sudo apt-get update && upgrade

echo "Installing Web Server With Tasksel, Please Select Web Server"
echo "."
echo "."
echo "."
echo "."
echo "."
echo "."
echo "."
echo "."
sudo tasksel


# Install PHP, Mysql, Libapache2, dan phpMyAdmin
sudo apt-get -y install php7.0-fpm
sudo apt-get install libapache2-mod-php7.0
sudo apt-get -y install mariadb-server mysql-client 


echo "#########################################################################################################################"
echo " "
echo " "
echo " "
echo " Install phpmyadmin, here are two options:
               - in option (Web Server to reconfigure automatically): <- Select Apache
               and Pressing TAB then Ok
               - in the options (Configure database for phpmyadmin with dbconfig-common) <- Select
               No "

echo " "
echo " "
echo " "
echo "#########################################################################################################################"


sudo apt-get -y install phpmyadmin

# Mengaktifkan Modul PHP7.0

sudo a2enconf php7.0-fpm
sudo service apache2 reload
sudo a2enmod proxy_fcgi setenvif
sudo service apache2 reload


echo " Now, You Set Mysql Password Here"
# Set Password Mysql
sudo mysql_secure_installation

echo "Downloading File............................................"


sudo git clone https://github.com/mexious/cserver.git /var/www/html/panel
cd /var/www/html

mv /etc/sudoers /etc/sudoers.bak 
touch /etc/sudoers chmod 440 /etc/sudoers
cat <<EOF >>/etc/sudoers

#
# This file MUST be edited with the 'visudo' command as root.
#
# Please consider adding local content in /etc/sudoers.d/ instead of
# directly modifying this file.
#
# See the man page for details on how to write a sudoers file.
#
Defaults        env_reset
Defaults        mail_badpass
Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Host alias specification

# User alias specification

# Cmnd alias specification

# User privilege specification
root    ALL=(ALL:ALL) ALL

# Allow members of group sudo to execute any command
%sudo   ALL=(ALL:ALL) ALL

# See sudoers(5) for more information on "#include" directives:

#includedir /etc/sudoers.d


%www-data ALL=NOPASSWD: ALL

EOF




echo "Success.... Thank You Use cServer Panel v1.0 ! "
echo " Report Bug ? Please Feedback To support@mail.mexious.net"