#!/bin/bash

# Lunexy Debian installer v.05

#----------------------------------------------------------#
#                  Variables&Functions                     #
#----------------------------------------------------------#
export PATH=$PATH:/sbin
export DEBIAN_FRONTEND=noninteractive
RHOST='apt.vestacp.com'
CHOST='c.vestacp.com'
VERSION='debian'
VESTA='/usr/local/vesta'
memory=$(grep 'MemTotal' /proc/meminfo |tr ' ' '\n' |grep [0-9])
arch=$(uname -i)
os='debian'
release=$(cat /etc/debian_version|grep -o [0-9]|head -n1)
codename="$(cat /etc/os-release |grep VERSION= |cut -f 2 -d \(|cut -f 1 -d \))"
vestacp="http://$CHOST/$VERSION/$release"

dpkg --list | grep php | awk '/^ii/{ print $2}'
x="$(dpkg --list | grep php | awk '/^ii/{ print $2}')"
apt-get --purge remove $x

# Installing nginx
echo -e "deb http://packages.dotdeb.org wheezy all" >>/etc/apt/sources.list
echo -e "deb-src http://packages.dotdeb.org wheezy all" >>/etc/apt/sources.list
cd /tmp
wget https://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg
rm dotdeb.gpg

sudo apt-get update



apt-get install libfcgi-dev libfcgi0ldbl libjpeg62-turbo-dbg libmcrypt-dev libssl-dev libc-client2007e libc-client2007e-dev libxml2-dev libbz2-dev libcurl4-openssl-dev libjpeg-dev libpng12-dev libfreetype6-dev libkrb5-dev libpq-dev libxml2-dev libxslt1-dev

mkdir -p /usr/lib/x86_64-linux-gnu
ln -s /usr/lib/libc-client.a /usr/lib/x86_64-linux-gnu/libc-client.a

#
#cd $VESTA
#wget http://de1.php.net/get/php-7.0.5.tar.bz2/from/this/mirror -O php-7.0.5.tar.bz2
#tar jxf php-7.0.5.tar.bz2
#cd php-7.0.5
#./configure --prefix=$VESTA/php-7.0.5 --with-pdo-pgsql --with-zlib-dir --with-freetype-dir --enable-mbstring --with-libxml-dir=/usr --enable-soap --enable-calendar --with-curl --with-mcrypt --with-zlib --with-gd --with-pgsql --disable-rpath --enable-inline-optimization --with-bz2 --with-zlib --enable-sockets --enable-sysvsem --enable-sysvshm --enable-pcntl --enable-mbregex --enable-exif --enable-bcmath --with-mhash --enable-zip --with-pcre-regex --with-pdo-mysql --with-mysqli --with-mysql-sock=/var/run/mysqld/mysqld.sock --with-jpeg-dir=/usr --with-png-dir=/usr --enable-gd-native-ttf --with-openssl --with-fpm-user=www-data --with-fpm-group=www-data --with-libdir=/lib/x86_64-linux-gnu --enable-ftp --with-imap --with-imap-ssl --with-kerberos --with-gettext --with-xmlrpc --with-xsl --enable-opcache --enable-fpm
#make

cd /etc
wget http://de1.php.net/get/php-7.0.5.tar.bz2/from/this/mirror -O php-7.0.5.tar.bz2
tar jxf php-7.0.5.tar.bz2
cd php-7.0.5
./configure --prefix=$/etc/php7 --with-pdo-pgsql --with-zlib-dir --with-freetype-dir --enable-mbstring --with-libxml-dir=/usr --enable-soap --enable-calendar --with-curl --with-mcrypt --with-zlib --with-gd --with-pgsql --disable-rpath --enable-inline-optimization --with-bz2 --with-zlib --enable-sockets --enable-sysvsem --enable-sysvshm --enable-pcntl --enable-mbregex --enable-exif --enable-bcmath --with-mhash --enable-zip --with-pcre-regex --with-pdo-mysql --with-mysqli --with-mysql-sock=/var/run/mysqld/mysqld.sock --with-jpeg-dir=/usr --with-png-dir=/usr --enable-gd-native-ttf --with-openssl --with-fpm-user=www-data --with-fpm-group=www-data --with-libdir=/lib/x86_64-linux-gnu --enable-ftp --with-imap --with-imap-ssl --with-kerberos --with-gettext --with-xmlrpc --with-xsl --enable-opcache --enable-fpm
make
make install

apt-get install libxml2-dev 

apt-get install libssl-dev
apt-get install libcurl4-openssl-dev
apt-get install clibcurl4-openssl-dev pkg-config libssl-dev libsslcommon2-dev

apt-get install libbz2-dev
apt-get install libjpeg-dev
apt-get install libpng12-dev
apt-get install libfreetype6-dev
apt-get install libc-client2007e-dev
apt-get install libmcrypt-dev
apt-get install libpq-dev
apt-get install libxslt-dev