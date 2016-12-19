#!/bin/bash

# Vesta Debian installer v.05

#----------------------------------------------------------#
#                  Variables&Functions                     #
#----------------------------------------------------------#
export PATH=$PATH:/sbin
export DEBIAN_FRONTEND=noninteractive
RHOST='http://c.vestacp.com/debian/7'
CHOST='http://c.vestacp.com/debian/7'
VERSION='debian'
VESTA='/usr/local/vesta'
memory='1048576'
arch='i386'
os='debian'
release='7'
codename='wheezy'
vestacp='http://c.vestacp.com/debian/7'

if [ 7 -eq 8 ]; then
    software="nginx apache2 apache2-utils apache2.2-common
        apache2-suexec-custom libapache2-mod-ruid2
        libapache2-mod-fcgid libapache2-mod-php5 php5 php5-common php5-cgi
        php5-mysql php5-curl php5-fpm php5-pgsql awstats webalizer vsftpd
        proftpd-basic bind9 exim4 exim4-daemon-heavy clamav-daemon
        spamassassin dovecot-imapd dovecot-pop3d roundcube-core
        roundcube-mysql roundcube-plugins my#!/bin/bash

# Vesta Debian installer v.05

#----------------------------------------------------------#
#                  Variables&Functions                     #
#----------------------------------------------------------#
export PATH=$PATH:/sbin
export DEBIAN_FRONTEND=noninteractive
RHOST='http://c.vestacp.com/debian/7'
CHOST='http://c.vestacp.com/debian/7'
VERSION='debian'
VESTA='/usr/local/vesta'
memory='1048576'
arch='i386'
os='debian'
release='7'
codename='wheezy'
vestacp='http://c.vestacp.com/debian/7'

if [ 7 ]; then
    software="nginx apache2 apache2-utils apache2.2-common
        apache2-suexec-custom libapache2-mod-ruid2
        libapache2-mod-fcgid libapache2-mod-php5 php5 php5-common php5-cgi
        php5-mysql php5-curl php5-fpm php5-pgsql awstats webalizer vsftpd
        proftpd-basic bind9 exim4 exim4-daemon-heavy clamav-daemon
        spamassassin dovecot-imapd dovecot-pop3d roundcube-core
        roundcube-mysql roundcube-plugins mysql-server mysql-common
       mysql-client postgresql postgresql-contrib phppgadmin phpMyAdmin mc
        flex whois rssh git idn zip sudo bc ftp lsof ntpdate rrdtool quota
        e2fslibs bsdutils e2fsprogs curl imagemagick fail2ban dnsutils
        bsdmainutils cron vesta vesta-nginx vesta-php expect libmail-dkim-perl"
else
    software="nginx apache2 apache2-utils apache2.2-common
        apache2-suexec-custom libapache2-mod-ruid2
        libapache2-mod-fcgid libapache2-mod-php5 php5 php5-common php5-cgi
        php5-mysql php5-curl php5-fpm php5-pgsql awstats webalizer vsftpd
        proftpd-basic proftpd-mod-vroot bind9 exim4 exim4-daemon-heavy
        clamav-daemon spamassassin dovecot-imapd dovecot-pop3d roundcube-core
        roundcube-mysql roundcube-plugins mysql-server mysql-common
        mysql-client postgresql postgresql-contrib phppgadmin phpMyAdmin mc
        flex whois rssh git idn zip sudo bc ftp lsof ntpdate rrdtool quota
        e2fslibs bsdutils e2fsprogs curl imagemagick fail2ban dnsutils
             mysql-client postgresql postgresql-contrib phppgadmin phpMyAdmin mc
        flex whois rssh git idn zip sudo bc ftp lsof ntpdate rrdtool quota
        e2fslibs bsdutils e2fsprogs curl imagemagick fail2ban dnsutils
        bsdmainutils cron vesta vesta-nginx vesta-php expect libmail-dkim-perl"
else
    software="nginx apache2 apache2-utils apache2.2-common
        apache2-suexec-custom libapache2-mod-ruid2
        libapache2-mod-fcgid libapache2-mod-php5 php5 php5-common php5-cgi
        php5-mysql php5-curl php5-fpm php5-pgsql awstats webalizer vsftpd
        proftpd-basic proftpd-mod-vroot bind9 exim4 exim4-daemon-heavy
        clamav-daemon spamassassin dovecot-imapd dovecot-pop3d roundcube-core
        roundcube-mysql roundcube-plugins mysql-server mysql-common
        mysql-client postgresql postgresql-contrib phppgadmin phpMyAdmin mc
        flex whois rssh git idn zip sudo bc ftp lsof ntpdate rrdtool quota
        e2fslibs bsdutils e2fsprogs curl imagemagick fail2ban dnsutils
ils cron vesta vesta-nginx vesta-php expect"
fi

# Defining help function
help() {
    echo "Usage: $0 [OPTIONS]
  -a, --apache            Install Apache        [yes|no]  default: yes
  -n, --nginx             Install Nginx         [yes|no]  default: yes
  -w, --phpfpm            Install PHP-FPM       [yes|no]  default: no
  -v, --vsftpd            Install Vsftpd        [yes|no]  default: yes
  -j, --proftpd           Install ProFTPD       [yes|no]  default: no
  -k, --named             Install Bind          [yes|no]  default: yes
  -m, --mysql             Install MySQL         [yes|no]  default: yes
  -g, --postgresql        Install PostgreSQL    [yes|no]  default: no
  -d, --mongodb           Install MongoDB       [yes|no]  unsupported
  -x, --exim              Install Exim          [yes|no]  default: yes
  -z, --dovecot           Install Dovecot       [yes|no]  default: yes
  -c, --clamav            Install ClamAV        [yes|no]  default: yes
  -t, --spamassassin      Install SpamAssass        bsdmainutils cron vesta vesta-nginx vesta-php expect"
fi

# Defining help function
help() {
    echo "Usage: $0 [OPTIONS]
  -a, --apache            Install Apache        [yes|no]  default: yes
  -n, --nginx             Install Nginx         [yes|no]  default: yes
  -w, --phpfpm            Install PHP-FPM       [yes|no]  default: no
  -v, --vsftpd            Install Vsftpd        [yes|no]  default: yes
  -j, --proftpd           Install ProFTPD       [yes|no]  default: no
  -k, --named             Install Bind          [yes|no]  default: yes
  -m, --mysql             Install MySQL         [yes|no]  default: yes
  -g, --postgresql        Install PostgreSQL    [yes|no]  default: no
  -d, --mongodb           Install MongoDB       [yes|no]  unsupported
  -x, --exim              Install Exim          [yes|no]  default: yes
  -z, --dovecot           Install Dovecot       [yes|no]  default: yes
  -c, --clamav            Install ClamAV        [yes|no]  default: yes
in  [yes|no]  default: yes
  -i, --iptables          Install Iptables      [yes|no]  default: yes
  -b, --fail2ban          Install Fail2ban      [yes|no]  default: yes
  -q, --quota             Filesystem Quota      [yes|no]  default: no
  -l, --lang              Default language                default: en
  -y, --interactive       Interactive install   [yes|no]  default: yes
  -s, --hostname          Set hostname
  -e, --email             Set admin email
  -p, --password          Set admin password
  -f, --force             Force installation
  -h, --help              Print this help

  Example: bash $0 -e demo@http://c.vestacp.com/debian/7.com -p p4ssw0rd --apache no --phpfpm yes"
    exit 1
}


# Defining password-gen function
gen_pass() {
    MATRIX='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    LENGTH=10
    while [ ${n:=1} -le $LENGTH ]; do
        PASS="$PASS${MATRIX:$(($RANDOM%${#MATRIX})):1}"
        let n+=1
    done
    echo "$PAS  -t, --spamassassin      Install SpamAssassin  [yes|no]  default: yes
  -i, --iptables          Install Iptables      [yes|no]  default: yes
  -b, --fail2ban          Install Fail2ban      [yes|no]  default: yes
  -q, --quota             Filesystem Quota      [yes|no]  default: no
  -l, --lang              Default language                default: en
  -y, --interactive       Interactive install   [yes|no]  default: yes
  -s, --hostname          Set hostname
  -e, --email             Set admin email
  -p, --password          Set admin password
  -f, --force             Force installation
  -h, --help              Print this help

  Example: bash $0 -e demo@http://c.vestacp.com/debian/7.com -p p4ssw0rd --apache no --phpfpm yes"
    exit 1
}


# Defining password-gen function
gen_pass() {
    MATRIX='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    LENGTH=10
    while [ ${n:=1} -le $LENGTH ]; do
        PASS="$PASS${MATRIX:$(($RANDOM%${#MATRIX})):1}"
        let n+=1
    done
S"
}

# Defning return code check function
check_result() {
    if [ $1 -ne 0 ]; then
        echo "Error: $2"
        exit $1
    fi
}

# Defining function to set default value
set_default_value() {
    eval variable=\$$1
    if [ -z "$variable" ]; then
        eval $1=$2
    fi
    if [ "$variable" != 'yes' ] && [ "$variable" != 'no' ]; then
        eval $1=$2
    fi
}


#----------------------------------------------------------#
#                    Verifications                         #
#----------------------------------------------------------#

# Creating temporary file
tmpfile='/tmp/tmp.fojwYyCCN5'

# Translating argument to --gnu-long-options
for arg; do
    delim=""
    case "$arg" in
        --apache)               args="${args}-a " ;;
        --nginx)                args="${args}-n " ;;
        --phpfpm)               args="${args}-w " ;;
        --vsftpd)               args="${args}-v " ;;
        --proftpd)              args="${args}-j " ;;
        --name    echo "$PASS"
}

# Defning return code check function
check_result() {
    if [ $1 -ne 0 ]; then
        echo "Error: $2"
        exit $1
    fi
}

# Defining function to set default value
set_default_value() {
    eval variable=\$$1
    if [ -z "$variable" ]; then
        eval $1=$2
    fi
    if [ "$variable" != 'yes' ] && [ "$variable" != 'no' ]; then
        eval $1=$2
    fi
}


#----------------------------------------------------------#
#                    Verifications                         #
#----------------------------------------------------------#

# Creating temporary file
tmpfile='/tmp/tmp.fojwYyCCN5'

# Translating argument to --gnu-long-options
for arg; do
    delim=""
    case "$arg" in
        --apache)               args="${args}-a " ;;
        --nginx)                args="${args}-n " ;;
        --phpfpm)               args="${args}-w " ;;
        --vsftpd)               args="${args}-v " ;;
        --proftpd)              args="${args}-j " ;;
"${args}-k " ;;
        --mysql)                args="${args}-m " ;;
        --postgresql)           args="${args}-g " ;;
        --mongodb)              args="${args}-d " ;;
        --exim)                 args="${args}-x " ;;
        --dovecot)              args="${args}-z " ;;
        --clamav)               args="${args}-c " ;;
        --spamassassin)         args="${args}-t " ;;
        --iptables)             args="${args}-i " ;;
        --fail2ban)             args="${args}-b " ;;
        --remi)                 args="${args}-r " ;;
        --quota)                args="${args}-q " ;;
        --lang)                 args="${args}-l " ;;
        --interactive)          args="${args}-y " ;;
        --hostname)             args="${args}-s " ;;
        --email)                args="${args}-e " ;;
        --password)             args="${args}-p " ;;
        --force)                args="${args}-f " ;;
        --help)                 args="${args}-h " ;;
        *)             --named)                args="${args}-k " ;;
        --mysql)                args="${args}-m " ;;
        --postgresql)           args="${args}-g " ;;
        --mongodb)              args="${args}-d " ;;
        --exim)                 args="${args}-x " ;;
        --dovecot)              args="${args}-z " ;;
        --clamav)               args="${args}-c " ;;
        --spamassassin)         args="${args}-t " ;;
        --iptables)             args="${args}-i " ;;
        --fail2ban)             args="${args}-b " ;;
        --remi)                 args="${args}-r " ;;
        --quota)                args="${args}-q " ;;
        --lang)                 args="${args}-l " ;;
        --interactive)          args="${args}-y " ;;
        --hostname)             args="${args}-s " ;;
        --email)                args="${args}-e " ;;
        --password)             args="${args}-p " ;;
        --force)                args="${args}-f " ;;
        --help)                 args="${args}-h " ;;
                 [[ "${arg:0:1}" == "-" ]] || delim="\""
                                args="${args}${delim}${arg}${delim} ";;
    esac
done
eval set -- "$args"

# Parsing arguments
while getopts "a:n:w:v:j:k:m:g:d:x:z:c:t:i:b:r:q:l:y:s:e:p:fh" Option; do
    case $Option in
        a) apache=$OPTARG ;;            # Apache
        n) nginx=$OPTARG ;;             # Nginx
        w) phpfpm=$OPTARG ;;            # PHP-FPM
        v) vsftpd=$OPTARG ;;            # Vsftpd
        j) proftpd=$OPTARG ;;           # Proftpd
        k) named=$OPTARG ;;             # Named
        m) mysql=$OPTARG ;;             # MySQL
        g) postgresql=$OPTARG ;;        # PostgreSQL
        d) mongodb=$OPTARG ;;           # MongoDB (unsupported)
        x) exim=$OPTARG ;;              # Exim
        z) dovecot=$OPTARG ;;           # Dovecot
        c) clamd=$OPTARG ;;             # ClamAV
        t) spamd=$OPTARG ;;             # SpamAssassin
        i) iptables=$OPTARG ;;          # Iptables
        b) f        *)                      [[ "${arg:0:1}" == "-" ]] || delim="\""
                                args="${args}${delim}${arg}${delim} ";;
    esac
done
eval set -- "$args"

# Parsing arguments
while getopts "a:n:w:v:j:k:m:g:d:x:z:c:t:i:b:r:q:l:y:s:e:p:fh" Option; do
    case $Option in
        a) apache=$OPTARG ;;            # Apache
        n) nginx=$OPTARG ;;             # Nginx
        w) phpfpm=$OPTARG ;;            # PHP-FPM
        v) vsftpd=$OPTARG ;;            # Vsftpd
        j) proftpd=$OPTARG ;;           # Proftpd
        k) named=$OPTARG ;;             # Named
        m) mysql=$OPTARG ;;             # MySQL
        g) postgresql=$OPTARG ;;        # PostgreSQL
        d) mongodb=$OPTARG ;;           # MongoDB (unsupported)
        x) exim=$OPTARG ;;              # Exim
        z) dovecot=$OPTARG ;;           # Dovecot
        c) clamd=$OPTARG ;;             # ClamAV
        t) spamd=$OPTARG ;;             # SpamAssassin
        i) iptables=$OPTARG ;;          # Iptables
n=$OPTARG ;;          # Fail2ban
        r) remi=$OPTARG ;;              # Remi repo
        q) quota=$OPTARG ;;             # FS Quota
        l) lang=$OPTARG ;;              # Language
        y) interactive=$OPTARG ;;       # Interactive install
        s) servername=$OPTARG ;;        # Hostname
        e) email=$OPTARG ;;             # Admin email
        p) vpass=$OPTARG ;;             # Admin password
        f) force='yes' ;;               # Force install
        h) help ;;                      # Help
        *) help ;;                      # Print help (default)
    esac
done

# Defining default software stack
set_default_value 'nginx' 'yes'
set_default_value 'apache' 'yes'
set_default_value 'phpfpm' 'no'
set_default_value 'vsftpd' 'yes'
set_default_value 'proftpd' 'no'
set_default_value 'named' 'yes'
set_default_value 'mysql' 'yes'
set_default_value 'postgresql' 'no'
set_default_value 'mongodb' 'no'
set_default_value 'exim' 'yes'
set_default_value 'dovecot' 'yes'
if [ $memor        b) fail2ban=$OPTARG ;;          # Fail2ban
        r) remi=$OPTARG ;;              # Remi repo
        q) quota=$OPTARG ;;             # FS Quota
        l) lang=$OPTARG ;;              # Language
        y) interactive=$OPTARG ;;       # Interactive install
        s) servername=$OPTARG ;;        # Hostname
        e) email=$OPTARG ;;             # Admin email
        p) vpass=$OPTARG ;;             # Admin password
        f) force='yes' ;;               # Force install
        h) help ;;                      # Help
        *) help ;;                      # Print help (default)
    esac
done

# Defining default software stack
set_default_value 'nginx' 'yes'
set_default_value 'apache' 'yes'
set_default_value 'phpfpm' 'no'
set_default_value 'vsftpd' 'yes'
set_default_value 'proftpd' 'no'
set_default_value 'named' 'yes'
set_default_value 'mysql' 'yes'
set_default_value 'postgresql' 'no'
set_default_value 'mongodb' 'no'
set_default_value 'exim' 'yes'
set_default_value 'dovecot' 'yes'
1500000 ]; then
    set_default_value 'clamd' 'no'
    set_default_value 'spamd' 'no'
else
    set_default_value 'clamd' 'yes'
    set_default_value 'spamd' 'yes'
fi
set_default_value 'iptables' 'yes'
set_default_value 'fail2ban' 'yes'
set_default_value 'quota' 'no'
set_default_value 'lang' 'en'
set_default_value 'interactive' 'yes'

# Checking software conflicts
if [ "$phpfpm" = 'yes' ]; then
    apache='no'
    nginx='yes'
fi
if [ "$proftpd" = 'yes' ]; then
    vsftpd='no'
fi
if [ "$exim" = 'no' ]; then
    clamd='no'
    spamd='no'
    dovecot='no'
fi
if [ "$iptables" = 'no' ]; then
    fail2ban='no'
fi

# Checking root permissions
if [ "x0" != 'x0' ]; then
    check_error 1 "Script can be run executed only by root"
fi

# Checking admin user account
if [ ! -z "$(grep ^admin: /etc/passwd /etc/group)" ] && [ -z "$force" ]; then
    echo 'Please remove admin user account before proceeding.'
    echo 'If you want to do it automatically run installer with -f option:'
    eif [ 1048576 -lt 1500000 ]; then
    set_default_value 'clamd' 'no'
    set_default_value 'spamd' 'no'
else
    set_default_value 'clamd' 'yes'
    set_default_value 'spamd' 'yes'
fi
set_default_value 'iptables' 'yes'
set_default_value 'fail2ban' 'yes'
set_default_value 'quota' 'no'
set_default_value 'lang' 'en'
set_default_value 'interactive' 'yes'

# Checking software conflicts
if [ "$phpfpm" = 'yes' ]; then
    apache='no'
    nginx='yes'
fi
if [ "$proftpd" = 'yes' ]; then
    vsftpd='no'
fi
if [ "$exim" = 'no' ]; then
    clamd='no'
    spamd='no'
    dovecot='no'
fi
if [ "$iptables" = 'no' ]; then
    fail2ban='no'
fi

# Checking root permissions
if [ "x0" != 'x0' ]; then
    check_error 1 "Script can be run executed only by root"
fi

# Checking admin user account
if [ ! -z "$(grep ^admin: /etc/passwd /etc/group)" ] && [ -z "$force" ]; then
    echo 'Please remove admin user account before proceeding.'
    echo 'If you want to do it automatically run installer with -f option:'
h $0 --force\n"
    check_result 1 "User admin exists"
fi

# Checking wget
if [ ! -e '/usr/bin/wget' ]; then
    apt-get -y install wget
    check_result $? "Can't install wget"
fi

# Checking repository availability
wget -q "http://c.vestacp.com/debian/7/deb_signing.key" -O /dev/null
check_result $? "No access to Vesta repository"

# Check installed packages
tmpfile='/tmp/tmp.N3hTzALfsU'
dpkg --get-selections > $tmpfile
for pkg in exim4 mysql-server apache2 nginx vesta; do
    if [ ! -z "$(grep $pkg $tmpfile)" ]; then
        conflicts="$pkg $conflicts"
    fi
done
rm -f $tmpfile
if [ ! -z "$conflicts" ] && [ -z "$force" ]; then
    echo '!!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!!'
    echo
    echo 'Following packages are already installed:'
    echo "$conflicts"
    echo
    echo 'It is highly recommended to remove them before proceeding.'
    echo 'If you want to force installation run this script with -f option:'
    echo "Example: bash $0 --force"    echo -e "Example: bash $0 --force\n"
    check_result 1 "User admin exists"
fi

# Checking wget
if [ ! -e '/usr/bin/wget' ]; then
    apt-get -y install wget
    check_result $? "Can't install wget"
fi

# Checking repository availability
wget -q "http://c.vestacp.com/debian/7/deb_signing.key" -O /dev/null
check_result $? "No access to Vesta repository"

# Check installed packages
tmpfile='/tmp/tmp.N3hTzALfsU'
dpkg --get-selections > $tmpfile
for pkg in exim4 mysql-server apache2 nginx vesta; do
    if [ ! -z "$(grep $pkg $tmpfile)" ]; then
        conflicts="$pkg $conflicts"
    fi
done
rm -f $tmpfile
if [ ! -z "$conflicts" ] && [ -z "$force" ]; then
    echo '!!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!!'
    echo
    echo 'Following packages are already installed:'
    echo "$conflicts"
    echo
    echo 'It is highly recommended to remove them before proceeding.'
    echo 'If you want to force installation run this script with -f option:'
    echo "Example: bash $0 --force"
 echo
    echo '!!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!!'
    echo
    check_result 1 "Control Panel should be installed on clean server."
fi


#----------------------------------------------------------#
#                       Brief Info                         #
#----------------------------------------------------------#

# Printing nice ascii aslogo
clear
echo
echo ' _|      _|  _|_|_|_|    _|_|_|  _|_|_|_|_|    _|_|'
echo ' _|      _|  _|        _|            _|      _|    _|'
echo ' _|      _|  _|_|_|      _|_|        _|      _|_|_|_|'
echo '   _|  _|    _|              _|      _|      _|    _|'
echo '     _|      _|_|_|_|  _|_|_|        _|      _|    _|'
echo
echo '                                  Vesta Control Panel'
echo -e "\n\n"

echo 'Following software will be installed on your system:'

# Web stack
if [ "$nginx" = 'yes' ]; then
    echo '   - Nginx Web Server'
fi
if [ "$apache" = 'yes' ] && [ "$nginx" = 'no' ] ; then
    echo '   - Apach    echo
    echo '!!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!! !!!'
    echo
    check_result 1 "Control Panel should be installed on clean server."
fi


#----------------------------------------------------------#
#                       Brief Info                         #
#----------------------------------------------------------#

# Printing nice ascii aslogo
clear
echo
echo ' _|      _|  _|_|_|_|    _|_|_|  _|_|_|_|_|    _|_|'
echo ' _|      _|  _|        _|            _|      _|    _|'
echo ' _|      _|  _|_|_|      _|_|        _|      _|_|_|_|'
echo '   _|  _|    _|              _|      _|      _|    _|'
echo '     _|      _|_|_|_|  _|_|_|        _|      _|    _|'
echo
echo '                                  Vesta Control Panel'
echo -e "\n\n"

echo 'Following software will be installed on your system:'

# Web stack
if [ "$nginx" = 'yes' ]; then
    echo '   - Nginx Web Server'
fi
if [ "$apache" = 'yes' ] && [ "$nginx" = 'no' ] ; then
    echo '   - Apache Web Server'
fi
pache" = 'yes' ] && [ "$nginx"  = 'yes' ] ; then
    echo '   - Apache Web Server (as backend)'
fi
if [ "$phpfpm"  = 'yes' ]; then
    echo '   - PHP-FPM Application Server'
fi

# DNS stack
if [ "$named" = 'yes' ]; then
    echo '   - Bind DNS Server'
fi

# Mail Stack
if [ "$exim" = 'yes' ]; then
    echo -n '   - Exim mail server'
    if [ "$clamd" = 'yes'  ] ||  [ "$spamd" = 'yes' ] ; then
        echo -n ' + '
        if [ "$clamd" = 'yes' ]; then
            echo -n 'Antivirus '
        fi
        if [ "$spamd" = 'yes' ]; then
            echo -n 'Antispam'
        fi
    fi
    echo
    if [ "$dovecot" = 'yes' ]; then
        echo '   - Dovecot POP3/IMAP Server'
    fi
fi

# DB stack
if [ "$mysql" = 'yes' ]; then
    echo '   - MySQL Database Server'
fi
if [ "$postgresql" = 'yes' ]; then
    echo '   - PostgreSQL Database Server'
fi
if [ "$mongodb" = 'yes' ]; then
    echo '   - MongoDB Database Server'
fi

# FTP stack
if [ "$vsftpd" = 'yes' ]; then
    echo '  if [ "$apache" = 'yes' ] && [ "$nginx"  = 'yes' ] ; then
    echo '   - Apache Web Server (as backend)'
fi
if [ "$phpfpm"  = 'yes' ]; then
    echo '   - PHP-FPM Application Server'
fi

# DNS stack
if [ "$named" = 'yes' ]; then
    echo '   - Bind DNS Server'
fi

# Mail Stack
if [ "$exim" = 'yes' ]; then
    echo -n '   - Exim mail server'
    if [ "$clamd" = 'yes'  ] ||  [ "$spamd" = 'yes' ] ; then
        echo -n ' + '
        if [ "$clamd" = 'yes' ]; then
            echo -n 'Antivirus '
        fi
        if [ "$spamd" = 'yes' ]; then
            echo -n 'Antispam'
        fi
    fi
    echo
    if [ "$dovecot" = 'yes' ]; then
        echo '   - Dovecot POP3/IMAP Server'
    fi
fi

# DB stack
if [ "$mysql" = 'yes' ]; then
    echo '   - MySQL Database Server'
fi
if [ "$postgresql" = 'yes' ]; then
    echo '   - PostgreSQL Database Server'
fi
if [ "$mongodb" = 'yes' ]; then
    echo '   - MongoDB Database Server'
fi

# FTP stack
if [ "$vsftpd" = 'yes' ]; then
    echo '   - Vsftpd FTP Server'
fi
roftpd" = 'yes' ]; then
    echo '   - ProFTPD FTP Server'
fi

# Firewall stack
if [ "$iptables" = 'yes' ]; then
    echo -n '   - Iptables Firewall'
fi
if [ "$iptables" = 'yes' ] && [ "$fail2ban" = 'yes' ]; then
    echo -n ' + Fail2Ban'
fi
echo -e "\n\n"

# Asking for confirmation to proceed
if [ "$interactive" = 'yes' ]; then
    read -p 'Would you like to continue [y/n]: ' answer
    if [ "$answer" != 'y' ] && [ "$answer" != 'Y'  ]; then
        echo 'Goodbye'
        exit 1
    fi

    # Asking for contact email
    if [ -z "$email" ]; then
        read -p 'Please enter admin email address: ' email
    fi

    # Asking to set FQDN hostname
    if [ -z "$servername" ]; then
        read -p "Please enter FQDN hostname [$(hostname)]: " servername
    fi
fi

# Generating admin password if it wasn't set
if [ -z "$vpass" ]; then
    vpass=$(gen_pass)
fi

# Set hostname if it wasn't set
if [ -z "$servername" ]; then
    servername=$(hostname -f)
fi

# Set FQDN if it wasif [ "$proftpd" = 'yes' ]; then
    echo '   - ProFTPD FTP Server'
fi

# Firewall stack
if [ "$iptables" = 'yes' ]; then
    echo -n '   - Iptables Firewall'
fi
if [ "$iptables" = 'yes' ] && [ "$fail2ban" = 'yes' ]; then
    echo -n ' + Fail2Ban'
fi
echo -e "\n\n"

# Asking for confirmation to proceed
if [ "$interactive" = 'yes' ]; then
    read -p 'Would you like to continue [y/n]: ' answer
    if [ "$answer" != 'y' ] && [ "$answer" != 'Y'  ]; then
        echo 'Goodbye'
        exit 1
    fi

    # Asking for contact email
    if [ -z "$email" ]; then
        read -p 'Please enter admin email address: ' email
    fi

    # Asking to set FQDN hostname
    if [ -z "$servername" ]; then
        read -p "Please enter FQDN hostname [$(hostname)]: " servername
    fi
fi

# Generating admin password if it wasn't set
if [ -z "$vpass" ]; then
    vpass=$(gen_pass)
fi

# Set hostname if it wasn't set
if [ -z "$servername" ]; then
    servername=$(hostname -f)
fi

# Set FQDN if it wasn't set
[:alnum:]])*)\.)'
mask2='*[[:alnum:]](-?[[:alnum:]])+\.[[:alnum:]]{2,}'
if ! [[ "$servername" =~ ^${mask1}${mask2}$ ]]; then
    if [ ! -z "$servername" ]; then
        servername="$servername.example.com"
    else
        servername="example.com"
    fi
    echo "127.0.0.1 $servername" >> /etc/hosts
fi

# Set email if it wasn't set
if [ -z "$email" ]; then
    email="admin@$servername"
fi

# Defining backup directory
vst_backups="/root/vst_install_backups/$(date +%s)"
echo "Installation backup directory: $vst_backups"

# Printing start message and sleeping for 5 seconds
echo -e "\n\n\n\nInstallation will take about 15 minutes ...\n"
sleep 5


#----------------------------------------------------------#
#                      Checking swap                       #
#----------------------------------------------------------#

# Checking swap on small instances
if [ -z "$(swapon -s)" ] && [ 1048576 -lt 1000000 ]; then
    fallocate -l 1G /swapfile
    chmod 600 /swapfile
    mkswmask1='(([[:alnum:]](-?[[:alnum:]])*)\.)'
mask2='*[[:alnum:]](-?[[:alnum:]])+\.[[:alnum:]]{2,}'
if ! [[ "$servername" =~ ^${mask1}${mask2}$ ]]; then
    if [ ! -z "$servername" ]; then
        servername="$servername.example.com"
    else
        servername="example.com"
    fi
    echo "127.0.0.1 $servername" >> /etc/hosts
fi

# Set email if it wasn't set
if [ -z "$email" ]; then
    email="admin@$servername"
fi

# Defining backup directory
vst_backups="/root/vst_install_backups/$(date +%s)"
echo "Installation backup directory: $vst_backups"

# Printing start message and sleeping for 5 seconds
echo -e "\n\n\n\nInstallation will take about 15 minutes ...\n"
sleep 5


#----------------------------------------------------------#
#                      Checking swap                       #
#----------------------------------------------------------#

# Checking swap on small instances
if [ -z "$(swapon -s)" ] && [ 1048576 -lt 1000000 ]; then
    fallocate -l 1G /swapfile
    chmod 600 /swapfile
pfile
    swapon /swapfile
    echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab
fi


#----------------------------------------------------------#
#                   Install repository                     #
#----------------------------------------------------------#

# Updating system
apt-get -y upgrade
check_result $? 'apt-get upgrade failed'

aptitude install libpcre3 libpcre3-dev

cd /opt/
wget http://nginx.org/download/nginx-1.11.5.tar.gz
wget https://www.openssl.org/source/openssl-1.0.2j.tar.gz
tar xf nginx-1.11.5.tar.gz
tar xf openssl-1.0.2j.tar.gz

cd nginx-1.11.5
./configure --prefix=/etc/nginx --sbin-path=/usr/sbin/nginx --modules-path=/usr/lib/nginx/modules --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --pid-path=/var/run/nginx.pid --lock-path=/var/run/nginx.lock --http-client-body-temp-path=/var/cache/nginx/client_temp --http-proxy-temp-path=/var/cache/nginx/proxy_temp --http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp --http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp --http-scgi-temp-path=/var/cache/nginx/scgi_temp --user=nginx --group=nginx --with-compat --with-file-aio --with-threads --with-http_addition_module --with-http_auth_request_module --with-http_dav_module --with-http_flv_module --with-http_gunzip_module --with-http_gzip_static_module --with-http_mp4_module --with-http_random_index_module --with-http_realip_module --with-http_secure_link_module --with-http_slice_module --with-http_ssl_module --with-http_stub_status_module --with-http_sub_module --with-http_v2_module --with-mail --with-mail_ssl_module --with-stream --with-stream_realip_module --with-stream_ssl_module --with-stream_ssl_preread_module --with-openssl=/opt/openssl-1.0.2j
make
make install
service nginx restart

# Installing nginx repo
apt=/etc/apt/sources.list.d
echo "deb http://nginx.org/packages/debian/ wheezy nginx" > /etc/apt/sources.list.d/nginx.list
wget http://nginx.org/keys/nginx_signing.key -O /tmp/nginx_signing.key
apt-key add /tmp/nginx_signing.key

# Installing vesta repo
echo "deb http:///etc/apt/sources.list.d.http://c.vestacp.com/debian/7.com/wheezy/ wheezy vesta" > /etc/apt/sources.list.d/vesta.list
wget $c.http://c.vestacp.com/debian/7.com/deb_signing.key -O deb_signing.key
apt-key add deb_signing.key


#----------------------------------------------------------#
#                         Backup                           #
#------------------------------------------    mkswap /swapfile
    swapon /swapfile
    echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab
fi


#----------------------------------------------------------#
#                   Install repository                     #
#----------------------------------------------------------#

# Updating system
apt-get -y upgrade
check_result $? 'apt-get upgrade failed'

# Installing nginx repo
apt=/etc/apt/sources.list.d
echo "deb http://nginx.org/packages/debian/ wheezy nginx" > /etc/apt/sources.list.d/nginx.list
wget http://nginx.org/keys/nginx_signing.key -O /tmp/nginx_signing.key
apt-key add /tmp/nginx_signing.key

# Installing vesta repo
echo "deb.http://c.vestacp.com/debian/7.com/deb_signing.key -O deb_signing.key
apt-key add deb_signing.key


#----------------------------------------------------------#
#                         Backup                           #
-----#

# Creating backup directory tree
mkdir -p $vst_backups
cd $vst_backups
mkdir nginx apache2 php5 php5-fpm vsftpd proftpd bind exim4 dovecot clamd
mkdir spamassassin mysql postgresql mongodb vesta

# Backing up Nginx configuration
service nginx stop > /dev/null 2>&1
cp -r /etc/nginx/* $vst_backups/nginx >/dev/null 2>&1

# Backing up Apache configuration
service apache2 stop > /dev/null 2>&1
cp -r /etc/apache2/* $vst_backups/apache2 > /dev/null 2>&1
rm -f /etc/apache2/conf.d/* > /dev/null 2>&1

# Backing up PHP configuration
cp /etc/php.ini $vst_backups/php > /dev/null 2>&1
cp -r /etc/php.d  $vst_backups/php > /dev/null 2>&1

# Backing up PHP configuration
service php5-fpm stop >/dev/null 2>&1
cp /etc/php5/* $vst_backups/php5 > /dev/null 2>&1
rm -f /etc/php5/fpm/pool.d/* >/dev/null 2>&1

# Backing up Bind configuration
service bind9 stop > /dev/null 2>&1
cp -r /etc/bind/* $vst_backups/bind > /dev/null 2>&1

# Backing up Vsftpd configuration
service #----------------------------------------------------------#

# Creating backup directory tree
mkdir -p $vst_backups
cd $vst_backups
mkdir nginx apache2 php5 php5-fpm vsftpd proftpd bind exim4 dovecot clamd
mkdir spamassassin mysql postgresql mongodb vesta

# Backing up Nginx configuration
service nginx stop > /dev/null 2>&1
cp -r /etc/nginx/* $vst_backups/nginx >/dev/null 2>&1

# Backing up Apache configuration
service apache2 stop > /dev/null 2>&1
cp -r /etc/apache2/* $vst_backups/apache2 > /dev/null 2>&1
rm -f /etc/apache2/conf.d/* > /dev/null 2>&1

# Backing up PHP configuration
cp /etc/php.ini $vst_backups/php > /dev/null 2>&1
cp -r /etc/php.d  $vst_backups/php > /dev/null 2>&1

# Backing up PHP configuration
service php5-fpm stop >/dev/null 2>&1
cp /etc/php5/* $vst_backups/php5 > /dev/null 2>&1
rm -f /etc/php5/fpm/pool.d/* >/dev/null 2>&1

# Backing up Bind configuration
service bind9 stop > /dev/null 2>&1
cp -r /etc/bind/* $vst_backups/bind > /dev/null 2>&1

# Backing up Vsftpd configuration
vsftpd stop > /dev/null 2>&1
cp /etc/vsftpd.conf $vst_backups/vsftpd > /dev/null 2>&1

# Backing up ProFTPD configuration
service proftpd stop > /dev/null 2>&1
cp /etc/proftpd.conf $vst_backups/proftpd >/dev/null 2>&1

# Backing up Exim configuration
service exim4 stop > /dev/null 2>&1
cp -r /etc/exim4/* $vst_backups/exim4 > /dev/null 2>&1

# Backing up ClamAV configuration
service clamav-daemon stop > /dev/null 2>&1
cp -r /etc/clamav/* $vst_backups/clamav > /dev/null 2>&1

# Backing up SpamAssassin configuration
service spamassassin stop > /dev/null 2>&1
cp -r /etc/spamassassin/* $vst_backups/spamassassin > /dev/null 2>&1

# Backing up Dovecot configuration
service dovecot stop > /dev/null 2>&1
cp /etc/dovecot.conf $vst_backups/dovecot > /dev/null 2>&1
cp -r /etc/dovecot/* $vst_backups/dovecot > /dev/null 2>&1

# Backing up MySQL/MariaDB configuration and data
service mysql stop > /dev/null 2>&1
killall -9 mysqld > /dev/null 2>&1
mv /var/lib/mysql $vst_backups/mysql/mysql_datadir >service vsftpd stop > /dev/null 2>&1
cp /etc/vsftpd.conf $vst_backups/vsftpd > /dev/null 2>&1

# Backing up ProFTPD configuration
service proftpd stop > /dev/null 2>&1
cp /etc/proftpd.conf $vst_backups/proftpd >/dev/null 2>&1

# Backing up Exim configuration
service exim4 stop > /dev/null 2>&1
cp -r /etc/exim4/* $vst_backups/exim4 > /dev/null 2>&1

# Backing up ClamAV configuration
service clamav-daemon stop > /dev/null 2>&1
cp -r /etc/clamav/* $vst_backups/clamav > /dev/null 2>&1

# Backing up SpamAssassin configuration
service spamassassin stop > /dev/null 2>&1
cp -r /etc/spamassassin/* $vst_backups/spamassassin > /dev/null 2>&1

# Backing up Dovecot configuration
service dovecot stop > /dev/null 2>&1
cp /etc/dovecot.conf $vst_backups/dovecot > /dev/null 2>&1
cp -r /etc/dovecot/* $vst_backups/dovecot > /dev/null 2>&1

# Backing up MySQL/MariaDB configuration and data
service mysql stop > /dev/null 2>&1
killall -9 mysqld > /dev/null 2>&1
mv /var/lib/mysql $vst_backups/mysql/mysql_datadir > /dev/null 2>&1
p -r /etc/mysql/* $vst_backups/mysql > /dev/null 2>&1
mv -f /root/.my.cnf $vst_backups/mysql > /dev/null 2>&1

# Backup vesta
service vesta stop > /dev/null 2>&1
cp -r /usr/local/vesta/* $vst_backups/vesta > /dev/null 2>&1
apt-get -y remove vesta vesta-nginx vesta-php > /dev/null 2>&1
apt-get -y purge vesta vesta-nginx vesta-php > /dev/null 2>&1
rm -rf /usr/local/vesta > /dev/null 2>&1


#----------------------------------------------------------#
#                     Package Excludes                     #
#----------------------------------------------------------#

# Excluding packages
if [ "$nginx" = 'no'  ]; then
    software=$(echo "$software" | sed -e "s/^nginx//")
fi
if [ "$apache" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/apache2 //")
    software=$(echo "$software" | sed -e "s/apache2-utils//")
    software=$(echo "$software" | sed -e "s/apache2-suexec-custom//")
    software=$(echo "$software" | sed -e "s/apache2.2-common//")
    software=$(echo "$softwarecp -r /etc/mysql/* $vst_backups/mysql > /dev/null 2>&1
mv -f /root/.my.cnf $vst_backups/mysql > /dev/null 2>&1

# Backup vesta
service vesta stop > /dev/null 2>&1
cp -r /usr/local/vesta/* $vst_backups/vesta > /dev/null 2>&1
apt-get -y remove vesta vesta-nginx vesta-php > /dev/null 2>&1
apt-get -y purge vesta vesta-nginx vesta-php > /dev/null 2>&1
rm -rf /usr/local/vesta > /dev/null 2>&1


#----------------------------------------------------------#
#                     Package Excludes                     #
#----------------------------------------------------------#

# Excluding packages
if [ "$nginx" = 'no'  ]; then
    software=$(echo "$software" | sed -e "s/^nginx//")
fi
if [ "$apache" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/apache2 //")
    software=$(echo "$software" | sed -e "s/apache2-utils//")
    software=$(echo "$software" | sed -e "s/apache2-suexec-custom//")
    software=$(echo "$software" | sed -e "s/apache2.2-common//")
he2-mod-ruid2//")
    software=$(echo "$software" | sed -e "s/libapache2-mod-fcgid//")
    software=$(echo "$software" | sed -e "s/libapache2-mod-php5//")
fi
if [ "$phpfpm" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/php5-fpm//")
fi
if [ "$vsftpd" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/vsftpd//")
fi
if [ "$proftpd" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/proftpd-basic//")
    software=$(echo "$software" | sed -e "s/proftpd-mod-vroot//")
fi
if [ "$named" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/bind9//")
fi
if [ "$exim" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/exim4 //")
    software=$(echo "$software" | sed -e "s/exim4-daemon-heavy//")
    software=$(echo "$software" | sed -e "s/dovecot-imapd//")
    software=$(echo "$software" | sed -e "s/dovecot-pop3d//")
    software=$(echo "$software" | sed -e "s/clamav-daemon//")
    software=$(echo "$software" | sed -e "s/spamass    software=$(echo "$software" | sed -e "s/libapache2-mod-ruid2//")
    software=$(echo "$software" | sed -e "s/libapache2-mod-fcgid//")
    software=$(echo "$software" | sed -e "s/libapache2-mod-php5//")
fi
if [ "$phpfpm" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/php5-fpm//")
fi
if [ "$vsftpd" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/vsftpd//")
fi
if [ "$proftpd" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/proftpd-basic//")
    software=$(echo "$software" | sed -e "s/proftpd-mod-vroot//")
fi
if [ "$named" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/bind9//")
fi
if [ "$exim" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/exim4 //")
    software=$(echo "$software" | sed -e "s/exim4-daemon-heavy//")
    software=$(echo "$software" | sed -e "s/dovecot-imapd//")
    software=$(echo "$software" | sed -e "s/dovecot-pop3d//")
    software=$(echo "$software" | sed -e "s/clamav-daemon//")
assin//")
fi
if [ "$clamd" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/clamav-daemon//")
fi
if [ "$spamd" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/spamassassin//")
    software=$(echo "$software" | sed -e "s/libmail-dkim-perl//")
fi
if [ "$dovecot" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/dovecot-imapd//")
    software=$(echo "$software" | sed -e "s/dovecot-pop3d//")
fi
if [ "$mysql" = 'no' ]; then
    software=$(echo "$software" | sed -e 's/mysql-server//')
    software=$(echo "$software" | sed -e 's/mysql-client//')
    software=$(echo "$software" | sed -e 's/mysql-common//')
    software=$(echo "$software" | sed -e 's/php5-mysql//')
    software=$(echo "$software" | sed -e 's/phpMyAdmin//')
fi
if [ "$postgresql" = 'no' ]; then
    software=$(echo "$software" | sed -e 's/postgresql-contrib//')
    software=$(echo "$software" | sed -e 's/postgresql//')
    software=$(echo "$software" | sed -e 's/php5-pgsql    software=$(echo "$software" | sed -e "s/spamassassin//")
fi
if [ "$clamd" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/clamav-daemon//")
fi
if [ "$spamd" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/spamassassin//")
    software=$(echo "$software" | sed -e "s/libmail-dkim-perl//")
fi
if [ "$dovecot" = 'no' ]; then
    software=$(echo "$software" | sed -e "s/dovecot-imapd//")
    software=$(echo "$software" | sed -e "s/dovecot-pop3d//")
fi
if [ "$mysql" = 'no' ]; then
    software=$(echo "$software" | sed -e 's/mysql-server//')
    software=$(echo "$software" | sed -e 's/mysql-client//')
    software=$(echo "$software" | sed -e 's/mysql-common//')
    software=$(echo "$software" | sed -e 's/php5-mysql//')
    software=$(echo "$software" | sed -e 's/phpMyAdmin//')
fi
if [ "$postgresql" = 'no' ]; then
    software=$(echo "$software" | sed -e 's/postgresql-contrib//')
    software=$(echo "$software" | sed -e 's/postgresql//')
//')
    software=$(echo "$software" | sed -e 's/phppgadmin//')
fi
if [ "$iptables" = 'no' ] || [ "$fail2ban" = 'no' ]; then
    software=$(echo "$software" | sed -e 's/fail2ban//')
fi


#----------------------------------------------------------#
#                     Install packages                     #
#----------------------------------------------------------#

# Update system packages
apt-get update

# Disable daemon autostart /usr/share/doc/sysv-rc/README.policy-rc.d.gz
echo -e '#!/bin/sh \nexit 101' > /usr/sbin/policy-rc.d
chmod a+x /usr/sbin/policy-rc.d

# Install apt packages
apt-get -y install $software
check_result $? "apt-get install failed"

# Restore  policy
rm -f /usr/sbin/policy-rc.d


#----------------------------------------------------------#
#                     Configure system                     #
#----------------------------------------------------------#

# Enable SSH password auth
sed -i "s/rdAuthentication no/rdAuthenticat    software=$(echo "$software" | sed -e 's/php5-pgsql//')
    software=$(echo "$software" | sed -e 's/phppgadmin//')
fi
if [ "$iptables" = 'no' ] || [ "$fail2ban" = 'no' ]; then
    software=$(echo "$software" | sed -e 's/fail2ban//')
fi


#----------------------------------------------------------#
#                     Install packages                     #
#----------------------------------------------------------#

# Update system packages
apt-get update

# Disable daemon autostart /usr/share/doc/sysv-rc/README.policy-rc.d.gz
echo -e '#!/bin/sh \nexit 101' > /usr/sbin/policy-rc.d
chmod a+x /usr/sbin/policy-rc.d

# Install apt packages
apt-get -y install $software
check_result $? "apt-get install failed"

# Restore  policy
rm -f /usr/sbin/policy-rc.d


#----------------------------------------------------------#
#                     Configure system                     #
#----------------------------------------------------------#

# Enable SSH password auth
ion yes/g" /etc/ssh/sshd_config
service ssh restart

# Disable awstats cron
rm -f /etc/cron.d/awstats

# Set directory color
echo 'LS_COLORS="$LS_COLORS:di=00;33"' >> /etc/profile

# Register /sbin/nologin
echo "/sbin/nologin" >> /etc/shells

# NTP Synchronization
echo '#!/bin/sh' > /etc/cron.daily/ntpdate
echo "$(which ntpdate) -s pool.ntp.org" >> /etc/cron.daily/ntpdate
chmod 775 /etc/cron.daily/ntpdate
ntpdate -s pool.ntp.org

# Setup rssh
if [ -z "$(grep /usr/bin/rssh /etc/shells)" ]; then
    echo /usr/bin/rssh >> /etc/shells
fi
sed -i 's/#allowscp/allowscp/' /etc/rssh.conf
sed -i 's/#allowsftp/allowsftp/' /etc/rssh.conf
sed -i 's/#allowrsync/allowrsync/' /etc/rssh.conf
chmod 755 /usr/bin/rssh


#----------------------------------------------------------#
#                     Configure /usr/local/vesta                      #
#----------------------------------------------------------#

# Downloading sudo configuration
mkdir -p /etc/sudoers.d
wget http://c.vesed -i "s/rdAuthentication no/rdAuthentication yes/g" /etc/ssh/sshd_config
service ssh restart

# Disable awstats cron
rm -f /etc/cron.d/awstats

# Set directory color
echo 'LS_COLORS="$LS_COLORS:di=00;33"' >> /etc/profile

# Register /sbin/nologin
echo "/sbin/nologin" >> /etc/shells

# NTP Synchronization
echo '#!/bin/sh' > /etc/cron.daily/ntpdate
echo "$(which ntpdate) -s pool.ntp.org" >> /etc/cron.daily/ntpdate
chmod 775 /etc/cron.daily/ntpdate
ntpdate -s pool.ntp.org

# Setup rssh
if [ -z "$(grep /usr/bin/rssh /etc/shells)" ]; then
    echo /usr/bin/rssh >> /etc/shells
fi
sed -i 's/#allowscp/allowscp/' /etc/rssh.conf
sed -i 's/#allowsftp/allowsftp/' /etc/rssh.conf
sed -i 's/#allowrsync/allowrsync/' /etc/rssh.conf
chmod 755 /usr/bin/rssh


#----------------------------------------------------------#
#                     Configure /usr/local/vesta                      #
#----------------------------------------------------------#

# Downloading sudo configuration
mkdir -p /etc/sudoers.d
stacp.com/debian/7/sudo/admin -O /etc/sudoers.d/admin
chmod 440 /etc/sudoers.d/admin

# Configuring system env
echo "export /usr/local/vesta='/usr/local/vesta'" > /etc/profile.d/vesta.sh
chmod 755 /etc/profile.d/vesta.sh
source /etc/profile.d/vesta.sh
echo 'PATH=$PATH:'/usr/local/vesta'/bin' >> /root/.bash_profile
echo 'export PATH' >> /root/.bash_profile
source /root/.bash_profile

# Configuring logrotate for vesta logs
wget http://c.vestacp.com/debian/7/logrotate/vesta -O /etc/logrotate.d/vesta

# Building directory tree and creating some blank files for vesta
mkdir -p /usr/local/vesta/conf /usr/local/vesta/log /usr/local/vesta/ssl /usr/local/vesta/data/ips \
    /usr/local/vesta/data/queue /usr/local/vesta/data/users /usr/local/vesta/data/firewall \
    /usr/local/vesta/data/sessions
touch /usr/local/vesta/data/queue/backup.pipe /usr/local/vesta/data/queue/disk.pipe \
    /usr/local/vesta/data/queue/webstats.pipe /usr/local/vesta/data/queue/restart.pipe \
    /usr/local/wget http://c.vestacp.com/debian/7/sudo/admin -O /etc/sudoers.d/admin
chmod 440 /etc/sudoers.d/admin

# Configuring system env
echo "export /usr/local/vesta='/usr/local/vesta'" > /etc/profile.d/vesta.sh
chmod 755 /etc/profile.d/vesta.sh
source /etc/profile.d/vesta.sh
echo 'PATH=$PATH:'/usr/local/vesta'/bin' >> /root/.bash_profile
echo 'export PATH' >> /root/.bash_profile
source /root/.bash_profile

# Configuring logrotate for vesta logs
wget http://c.vestacp.com/debian/7/logrotate/vesta -O /etc/logrotate.d/vesta

# Building directory tree and creating some blank files for vesta
mkdir -p /usr/local/vesta/conf /usr/local/vesta/log /usr/local/vesta/ssl /usr/local/vesta/data/ips \
    /usr/local/vesta/data/queue /usr/local/vesta/data/users /usr/local/vesta/data/firewall \
    /usr/local/vesta/data/sessions
touch /usr/local/vesta/data/queue/backup.pipe /usr/local/vesta/data/queue/disk.pipe \
    /usr/local/vesta/data/queue/webstats.pipe /usr/local/vesta/data/queue/restart.pipe \
esta/data/queue/traffic.pipe /usr/local/vesta/log/system.log \
    /usr/local/vesta/log/nginx-error.log /usr/local/vesta/log/auth.log
chmod 750 /usr/local/vesta/conf /usr/local/vesta/data/users /usr/local/vesta/data/ips /usr/local/vesta/log
chmod -R 750 /usr/local/vesta/data/queue
chmod 660 /usr/local/vesta/log/*
rm -f /var/log/vesta
ln -s /usr/local/vesta/log /var/log/vesta
chown admin:admin /usr/local/vesta/data/sessions
chmod 770 /usr/local/vesta/data/sessions

# Generating vesta configuration
rm -f /usr/local/vesta/conf/vesta.conf 2>/dev/null
touch /usr/local/vesta/conf/vesta.conf
chmod 660 /usr/local/vesta/conf/vesta.conf

# WEB stack
if [ "$apache" = 'yes' ] && [ "$nginx" = 'no' ] ; then
    echo "WEB_SYSTEM='apache2'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_RGROUPS='www-data'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_PORT='80'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_SSL_PORT='443'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_SS    /usr/local/vesta/data/queue/traffic.pipe /usr/local/vesta/log/system.log \
    /usr/local/vesta/log/nginx-error.log /usr/local/vesta/log/auth.log
chmod 750 /usr/local/vesta/conf /usr/local/vesta/data/users /usr/local/vesta/data/ips /usr/local/vesta/log
chmod -R 750 /usr/local/vesta/data/queue
chmod 660 /usr/local/vesta/log/*
rm -f /var/log/vesta
ln -s /usr/local/vesta/log /var/log/vesta
chown admin:admin /usr/local/vesta/data/sessions
chmod 770 /usr/local/vesta/data/sessions

# Generating vesta configuration
rm -f /usr/local/vesta/conf/vesta.conf 2>/dev/null
touch /usr/local/vesta/conf/vesta.conf
chmod 660 /usr/local/vesta/conf/vesta.conf

# WEB stack
if [ "$apache" = 'yes' ] && [ "$nginx" = 'no' ] ; then
    echo "WEB_SYSTEM='apache2'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_RGROUPS='www-data'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_PORT='80'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_SSL_PORT='443'" >> /usr/local/vesta/conf/vesta.conf
'mod_ssl'"  >> /usr/local/vesta/conf/vesta.conf
    echo "STATS_SYSTEM='webalizer,awstats'" >> /usr/local/vesta/conf/vesta.conf
fi
if [ "$apache" = 'yes' ] && [ "$nginx"  = 'yes' ] ; then
    echo "WEB_SYSTEM='apache2'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_RGROUPS='www-data'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_PORT='8080'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_SSL_PORT='8443'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_SSL='mod_ssl'"  >> /usr/local/vesta/conf/vesta.conf
    echo "PROXY_SYSTEM='nginx'" >> /usr/local/vesta/conf/vesta.conf
    echo "PROXY_PORT='80'" >> /usr/local/vesta/conf/vesta.conf
    echo "PROXY_SSL_PORT='443'" >> /usr/local/vesta/conf/vesta.conf
    echo "STATS_SYSTEM='webalizer,awstats'" >> /usr/local/vesta/conf/vesta.conf
fi
if [ "$apache" = 'no' ] && [ "$nginx"  = 'yes' ]; then
    echo "WEB_SYSTEM='nginx'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_PORT='80'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_SSL='mod_ssl'"  >> /usr/local/vesta/conf/vesta.conf
    echo "STATS_SYSTEM='webalizer,awstats'" >> /usr/local/vesta/conf/vesta.conf
fi
if [ "$apache" = 'yes' ] && [ "$nginx"  = 'yes' ] ; then
    echo "WEB_SYSTEM='apache2'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_RGROUPS='www-data'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_PORT='8080'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_SSL_PORT='8443'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_SSL='mod_ssl'"  >> /usr/local/vesta/conf/vesta.conf
    echo "PROXY_SYSTEM='nginx'" >> /usr/local/vesta/conf/vesta.conf
    echo "PROXY_PORT='80'" >> /usr/local/vesta/conf/vesta.conf
    echo "PROXY_SSL_PORT='443'" >> /usr/local/vesta/conf/vesta.conf
    echo "STATS_SYSTEM='webalizer,awstats'" >> /usr/local/vesta/conf/vesta.conf
fi
if [ "$apache" = 'no' ] && [ "$nginx"  = 'yes' ]; then
    echo "WEB_SYSTEM='nginx'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_PORT='80'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_SSL_PORT='443'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_SSL='openssl'"  >> /usr/local/vesta/conf/vesta.conf
    if [ "$phpfpm" = 'yes' ]; then
    echo "WEB_BACKEND='php5-fpm'" >> /usr/local/vesta/conf/vesta.conf
    fi
    echo "STATS_SYSTEM='webalizer,awstats'" >> /usr/local/vesta/conf/vesta.conf
fi

# FTP stack
if [ "$vsftpd" = 'yes' ]; then
    echo "FTP_SYSTEM='vsftpd'" >> /usr/local/vesta/conf/vesta.conf
fi
if [ "$proftpd" = 'yes' ]; then
    echo "FTP_SYSTEM='proftpd'" >> /usr/local/vesta/conf/vesta.conf
fi

# DNS stack
if [ "$named" = 'yes' ]; then
    echo "DNS_SYSTEM='bind9'" >> /usr/local/vesta/conf/vesta.conf
fi

# Mail stack
if [ "$exim" = 'yes' ]; then
    echo "MAIL_SYSTEM='exim4'" >> /usr/local/vesta/conf/vesta.conf
    if [ "$clamd" = 'yes'  ]; then
        echo "ANTIVIRUS_SYSTEM='clamav-daemon'" >> /usr/local/vesta/conf/vesta.conf
    fi
    if [ "$spamd" = 'yes' ]; then
        echo "ANTISPAM_SYSTEM='spamassassin'" >> /usr/local/v    echo "WEB_SSL_PORT='443'" >> /usr/local/vesta/conf/vesta.conf
    echo "WEB_SSL='openssl'"  >> /usr/local/vesta/conf/vesta.conf
    if [ "$phpfpm" = 'yes' ]; then
        echo "WEB_BACKEND='php5-fpm'" >> /usr/local/vesta/conf/vesta.conf
    fi
    echo "STATS_SYSTEM='webalizer,awstats'" >> /usr/local/vesta/conf/vesta.conf
fi

# FTP stack
if [ "$vsftpd" = 'yes' ]; then
    echo "FTP_SYSTEM='vsftpd'" >> /usr/local/vesta/conf/vesta.conf
fi
if [ "$proftpd" = 'yes' ]; then
    echo "FTP_SYSTEM='proftpd'" >> /usr/local/vesta/conf/vesta.conf
fi

# DNS stack
if [ "$named" = 'yes' ]; then
    echo "DNS_SYSTEM='bind9'" >> /usr/local/vesta/conf/vesta.conf
fi

# Mail stack
if [ "$exim" = 'yes' ]; then
    echo "MAIL_SYSTEM='exim4'" >> /usr/local/vesta/conf/vesta.conf
    if [ "$clamd" = 'yes'  ]; then
        echo "ANTIVIRUS_SYSTEM='clamav-daemon'" >> /usr/local/vesta/conf/vesta.conf
    fi
    if [ "$spamd" = 'yes' ]; then
        echo "ANTISPAM_SYSTEM='spamassassin'" >> /usr/local/vesta/conf/vesta.conf
    fi
    if [ "$dovecot" = 'yes' ]; then
        echo "IMAP_SYSTEM='dovecot'" >> /usr/local/vesta/conf/vesta.conf
    fi
fi

# CRON daemon
echo "CRON_SYSTEM='cron'" >> /usr/local/vesta/conf/vesta.conf

# Firewall stack
if [ "$iptables" = 'yes' ]; then
    echo "FIREWALL_SYSTEM='iptables'" >> /usr/local/vesta/conf/vesta.conf
fi
if [ "$iptables" = 'yes' ] && [ "$fail2ban" = 'yes' ]; then
    echo "FIREWALL_EXTENSION='fail2ban'" >> /usr/local/vesta/conf/vesta.conf
fi

# Disk quota
if [ "$quota" = 'yes' ]; then
    echo "DISK_QUOTA='yes'" >> /usr/local/vesta/conf/vesta.conf
fi

# Backups
echo "BACKUP_SYSTEM='local'" >> /usr/local/vesta/conf/vesta.conf

# Language
echo "LANGUAGE='$lang'" >> /usr/local/vesta/conf/vesta.conf

# Version
echo "debian='0.9.8'" >> /usr/local/vesta/conf/vesta.conf

# Downloading hosting packages
cd /usr/local/vesta/data
wget http://c.vestacp.com/debian/7/packages.tar.gz -O packages.tar.gz
tar -xzf packages.tar.gz
rm -f packages.tar.gz

# D    fi
    if [ "$dovecot" = 'yes' ]; then
        echo "IMAP_SYSTEM='dovecot'" >> /usr/local/vesta/conf/vesta.conf
    fi
fi

# CRON daemon
echo "CRON_SYSTEM='cron'" >> /usr/local/vesta/conf/vesta.conf

# Firewall stack
if [ "$iptables" = 'yes' ]; then
    echo "FIREWALL_SYSTEM='iptables'" >> /usr/local/vesta/conf/vesta.conf
fi
if [ "$iptables" = 'yes' ] && [ "$fail2ban" = 'yes' ]; then
    echo "FIREWALL_EXTENSION='fail2ban'" >> /usr/local/vesta/conf/vesta.conf
fi

# Disk quota
if [ "$quota" = 'yes' ]; then
    echo "DISK_QUOTA='yes'" >> /usr/local/vesta/conf/vesta.conf
fi

# Backups
echo "BACKUP_SYSTEM='local'" >> /usr/local/vesta/conf/vesta.conf

# Language
echo "LANGUAGE='$lang'" >> /usr/local/vesta/conf/vesta.conf

# Version
echo "debian='0.9.8'" >> /usr/local/vesta/conf/vesta.conf

# Downloading hosting packages
cd /usr/local/vesta/data
wget http://c.vestacp.com/debian/7/packages.tar.gz -O packages.tar.gz
tar -xzf packages.tar.gz
rm -f packages.tar.gz

# Downloading templates
.vestacp.com/debian/7/templates.tar.gz -O templates.tar.gz
tar -xzf templates.tar.gz
rm -f templates.tar.gz

# Copying index.html to default documentroot
cp templates/web/skel/public_html/index.html /var/www/
sed -i 's/%domain%/It worked!/g' /var/www/index.html

# Downloading firewall rules
wget http://c.vestacp.com/debian/7/firewall.tar.gz -O firewall.tar.gz
tar -xzf firewall.tar.gz
rm -f firewall.tar.gz

# Configuring server hostname
/usr/local/vesta/bin/v-change-sys-hostname $servername 2>/dev/null

# Generating SSL certificate
/usr/local/vesta/bin/v-generate-ssl-cert $(hostname) $email 'US' 'California' \
     'San Francisco' 'Vesta Control Panel' 'IT' > /tmp/vst.pem

# Parsing certificate file
crt_end=$(grep -n "END CERTIFICATE-" /tmp/vst.pem |cut -f 1 -d:)
key_start=$(grep -n "BEGIN RSA" /tmp/vst.pem |cut -f 1 -d:)
key_end=$(grep -n  "END RSA" /tmp/vst.pem |cut -f 1 -d:)

# Adding SSL certificate
cd /usr/local/vesta/ssl
sed -n "1,${crt_end}p" /tmp/vst.pem > certificate.crtwget http://c.vestacp.com/debian/7/templates.tar.gz -O templates.tar.gz
tar -xzf templates.tar.gz
rm -f templates.tar.gz

# Copying index.html to default documentroot
cp templates/web/skel/public_html/index.html /var/www/
sed -i 's/%domain%/It worked!/g' /var/www/index.html

# Downloading firewall rules
wget http://c.vestacp.com/debian/7/firewall.tar.gz -O firewall.tar.gz
tar -xzf firewall.tar.gz
rm -f firewall.tar.gz

# Configuring server hostname
/usr/local/vesta/bin/v-change-sys-hostname $servername 2>/dev/null

# Generating SSL certificate
/usr/local/vesta/bin/v-generate-ssl-cert $(hostname) $email 'US' 'California' \
     'San Francisco' 'Vesta Control Panel' 'IT' > /tmp/vst.pem

# Parsing certificate file
crt_end=$(grep -n "END CERTIFICATE-" /tmp/vst.pem |cut -f 1 -d:)
key_start=$(grep -n "BEGIN RSA" /tmp/vst.pem |cut -f 1 -d:)
key_end=$(grep -n  "END RSA" /tmp/vst.pem |cut -f 1 -d:)

# Adding SSL certificate
cd /usr/local/vesta/ssl
sed -n "1,${crt_end}p" /tmp/vst.pem > certificate.crt
ey_start,${key_end}p" /tmp/vst.pem > certificate.key
chown root:mail /usr/local/vesta/ssl/*
chmod 660 /usr/local/vesta/ssl/*
rm /tmp/vst.pem


#----------------------------------------------------------#
#                     Configure Nginx                      #
#----------------------------------------------------------#

if [ "$nginx" = 'yes' ]; then
    rm -f /etc/nginx/conf.d/*.conf
    wget http://c.vestacp.com/debian/7/nginx/nginx.conf -O /etc/nginx/nginx.conf
    wget http://c.vestacp.com/debian/7/nginx/status.conf -O /etc/nginx/conf.d/status.conf
    wget http://c.vestacp.com/debian/7/nginx/phpmyadmin.inc -O /etc/nginx/conf.d/phpmyadmin.inc
    wget http://c.vestacp.com/debian/7/nginx/phppgadmin.inc -O /etc/nginx/conf.d/phppgadmin.inc
    wget http://c.vestacp.com/debian/7/nginx/webmail.inc -O /etc/nginx/conf.d/webmail.inc
    wget http://c.vestacp.com/debian/7/logrotate/nginx -O /etc/logrotate.d/nginx
    echo > /etc/nginx/conf.d/vesta.conf
    mkdir -p /var/log/nginx/domsed -n "$key_start,${key_end}p" /tmp/vst.pem > certificate.key
chown root:mail /usr/local/vesta/ssl/*
chmod 660 /usr/local/vesta/ssl/*
rm /tmp/vst.pem


#----------------------------------------------------------#
#                     Configure Nginx                      #
#----------------------------------------------------------#

if [ "$nginx" = 'yes' ]; then
    rm -f /etc/nginx/conf.d/*.conf
    wget http://c.vestacp.com/debian/7/nginx/nginx.conf -O /etc/nginx/nginx.conf
    wget http://c.vestacp.com/debian/7/nginx/status.conf -O /etc/nginx/conf.d/status.conf
    wget http://c.vestacp.com/debian/7/nginx/phpmyadmin.inc -O /etc/nginx/conf.d/phpmyadmin.inc
    wget http://c.vestacp.com/debian/7/nginx/phppgadmin.inc -O /etc/nginx/conf.d/phppgadmin.inc
    wget http://c.vestacp.com/debian/7/nginx/webmail.inc -O /etc/nginx/conf.d/webmail.inc
    wget http://c.vestacp.com/debian/7/logrotate/nginx -O /etc/logrotate.d/nginx
    echo > /etc/nginx/conf.d/vesta.conf
    mkdir -p /var/log/nginx/domains
  update-rc.d nginx defaults
    service nginx start
    check_result $? "nginx start failed"
fi


#----------------------------------------------------------#
#                    Configure Apache                      #
#----------------------------------------------------------#

if [ "$apache" = 'yes'  ]; then
    wget http://c.vestacp.com/debian/7/apache2/apache2.conf -O /etc/apache2/apache2.conf
    wget http://c.vestacp.com/debian/7/apache2/status.conf -O /etc/apache2/mods-enabled/status.conf
    wget http://c.vestacp.com/debian/7/logrotate/apache2 -O /etc/logrotate.d/apache2
    a2enmod rewrite
    a2enmod suexec
    a2enmod ssl
    a2enmod actions
    a2enmod ruid2
    a2enmod headers
    mkdir -p /etc/apache2/conf.d
    echo > /etc/apache2/conf.d/vesta.conf
    echo "# Powered by vesta" > /etc/apache2/sites-available/default
    echo "# Powered by vesta" > /etc/apache2/sites-available/default-ssl
    echo "# Powered by vesta" > /etc/apache2/ports.conf
    echo -e "/home\np    update-rc.d nginx defaults
    service nginx start
    check_result $? "nginx start failed"
fi


#----------------------------------------------------------#
#                    Configure Apache                      #
#----------------------------------------------------------#

if [ "$apache" = 'yes'  ]; then
    wget http://c.vestacp.com/debian/7/apache2/apache2.conf -O /etc/apache2/apache2.conf
    wget http://c.vestacp.com/debian/7/apache2/status.conf -O /etc/apache2/mods-enabled/status.conf
    wget http://c.vestacp.com/debian/7/logrotate/apache2 -O /etc/logrotate.d/apache2
    a2enmod rewrite
    a2enmod suexec
    a2enmod ssl
    a2enmod actions
    a2enmod ruid2
    a2enmod headers
    mkdir -p /etc/apache2/conf.d
    echo > /etc/apache2/conf.d/vesta.conf
    echo "# Powered by vesta" > /etc/apache2/sites-available/default
    echo "# Powered by vesta" > /etc/apache2/sites-available/default-ssl
    echo "# Powered by vesta" > /etc/apache2/ports.conf
 /etc/apache2/suexec/www-data
    touch /var/log/apache2/access.log /var/log/apache2/error.log
    mkdir -p /var/log/apache2/domains
    chmod a+x /var/log/apache2
    chmod 640 /var/log/apache2/access.log /var/log/apache2/error.log
    chmod 751 /var/log/apache2/domains
    update-rc.d apache2 defaults
    service apache2 start
    check_result $? "apache2 start failed"
else
    update-rc.d apache2 disable >/dev/null 2>&1
    service apache2 stop >/dev/null 2>&1
fi


#----------------------------------------------------------#
#                     Configure PHP-FPM                    #
#----------------------------------------------------------#

if [ "$phpfpm" = 'yes' ]; then
    wget http://c.vestacp.com/debian/7/php5-fpm/www.conf -O /etc/php5/fpm/pool.d/www.conf
    update-rc.d php5-fpm defaults
    service php5-fpm start
    check_result $? "php-fpm start failed"
fi


#----------------------------------------------------------#
#                     Configure    echo -e "/home\npublic_html/cgi-bin" > /etc/apache2/suexec/www-data
    touch /var/log/apache2/access.log /var/log/apache2/error.log
    mkdir -p /var/log/apache2/domains
    chmod a+x /var/log/apache2
    chmod 640 /var/log/apache2/access.log /var/log/apache2/error.log
    chmod 751 /var/log/apache2/domains
    update-rc.d apache2 defaults
    service apache2 start
    check_result $? "apache2 start failed"
else
    update-rc.d apache2 disable >/dev/null 2>&1
    service apache2 stop >/dev/null 2>&1
fi


#----------------------------------------------------------#
#                     Configure PHP-FPM                    #
#----------------------------------------------------------#

if [ "$phpfpm" = 'yes' ]; then
    wget http://c.vestacp.com/debian/7/php5-fpm/www.conf -O /etc/php5/fpm/pool.d/www.conf
    update-rc.d php5-fpm defaults
    service php5-fpm start
    check_result $? "php-fpm start failed"
fi


#----------------------------------------------------------#
 PHP                        #
#----------------------------------------------------------#

ZONE=$(timedatectl 2>/dev/null|grep Timezone|awk '{print $2}')
if [ -z "$ZONE" ]; then
    ZONE='UTC'
fi
for pconf in $(find /etc/php* -name php.ini); do
    sed -i "s/;date.timezone =/date.timezone = $ZONE/g" $pconf
    sed -i 's%_open_tag = Off%_open_tag = On%g' $pconf
done


#----------------------------------------------------------#
#                    Configure VSFTPD                      #
#----------------------------------------------------------#

if [ "$vsftpd" = 'yes' ]; then
    wget http://c.vestacp.com/debian/7/vsftpd/vsftpd.conf -O /etc/vsftpd.conf
    update-rc.d vsftpd defaults
    service vsftpd start
    check_result $? "vsftpd start failed"

    # To be deleted after release 0.9.8-18
    echo "/sbin/nologin" >> /etc/shells
fi


#----------------------------------------------------------#
#                    Configure ProFTPD                     #
#---------------#                     Configure PHP                        #
#----------------------------------------------------------#

ZONE=$(timedatectl 2>/dev/null|grep Timezone|awk '{print $2}')
if [ -z "$ZONE" ]; then
    ZONE='UTC'
fi
for pconf in $(find /etc/php* -name php.ini); do
    sed -i "s/;date.timezone =/date.timezone = $ZONE/g" $pconf
    sed -i 's%_open_tag = Off%_open_tag = On%g' $pconf
done


#----------------------------------------------------------#
#                    Configure VSFTPD                      #
#----------------------------------------------------------#

if [ "$vsftpd" = 'yes' ]; then
    wget http://c.vestacp.com/debian/7/vsftpd/vsftpd.conf -O /etc/vsftpd.conf
    update-rc.d vsftpd defaults
    service vsftpd start
    check_result $? "vsftpd start failed"

    # To be deleted after release 0.9.8-18
    echo "/sbin/nologin" >> /etc/shells
fi


#----------------------------------------------------------#
#                    Configure ProFTPD                     #
-------------------------------------------#

if [ "$proftpd" = 'yes' ]; then
    echo "127.0.0.1 $servername" >> /etc/hosts
    wget http://c.vestacp.com/debian/7/proftpd/proftpd.conf -O /etc/proftpd/proftpd.conf
    update-rc.d proftpd defaults
    service proftpd start
    check_result $? "proftpd start failed"
fi


#----------------------------------------------------------#
#                  Configure MySQL/MariaDB                 #
#----------------------------------------------------------#

if [ "$mysql" = 'yes' ]; then
    mycnf="my-small.cnf"
    if [ 1048576 -gt 1200000 ]; then
        mycnf="my-medium.cnf"
    fi
    if [ 1048576 -gt 3900000 ]; then
        mycnf="my-large.cnf"
    fi

    # MySQL configuration
    wget http://c.vestacp.com/debian/7/mysql/$mycnf -O /etc/mysql/my.cnf
    mysql_install_db
    update-rc.d mysql defaults
    service mysql start
    check_result $? "mysql start failed"

    # Securing MySQL installation
    mysqladmin -u root password#----------------------------------------------------------#

if [ "$proftpd" = 'yes' ]; then
    echo "127.0.0.1 $servername" >> /etc/hosts
    wget http://c.vestacp.com/debian/7/proftpd/proftpd.conf -O /etc/proftpd/proftpd.conf
    update-rc.d proftpd defaults
    service proftpd start
    check_result $? "proftpd start failed"
fi


#----------------------------------------------------------#
#                  Configure MySQL/MariaDB                 #
#----------------------------------------------------------#

if [ "$mysql" = 'yes' ]; then
    mycnf="my-small.cnf"
    if [ 1048576 -gt 1200000 ]; then
        mycnf="my-medium.cnf"
    fi
    if [ 1048576 -gt 3900000 ]; then
        mycnf="my-large.cnf"
    fi

    # MySQL configuration
    wget http://c.vestacp.com/debian/7/mysql/$mycnf -O /etc/mysql/my.cnf
    mysql_install_db
    update-rc.d mysql defaults
    service mysql start
    check_result $? "mysql start failed"

    # Securing MySQL installation
    mysqladmin -u root password $vpass
ho -e "[client]\npassword='$vpass'\n" > /root/.my.cnf
    chmod 600 /root/.my.cnf
    mysql -e "DELETE FROM mysql.user WHERE User=''"
    mysql -e "DROP DATABASE test" >/dev/null 2>&1
    mysql -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%'"
    mysql -e "DELETE FROM mysql.user WHERE user='' or password='';"
    mysql -e "FLUSH PRIVILEGES"

    # Configuring phpMyAdmin
    if [ "$apache" = 'yes' ]; then
        wget http://c.vestacp.com/debian/7/pma/apache.conf -O /etc/phpmyadmin/apache.conf
        ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf.d/phpmyadmin.conf
    fi
    wget http://c.vestacp.com/debian/7/pma/config.inc.php -O /etc/phpmyadmin/config.inc.php
    chmod 777 /var/lib/phpmyadmin/tmp
fi

#----------------------------------------------------------#
#                   Configure PostgreSQL                   #
#----------------------------------------------------------#

if [ "$postgresql" = 'yes' ]; then
    wget http://c.vestacp.com/debian/7/postgresql/pg_    echo -e "[client]\npassword='$vpass'\n" > /root/.my.cnf
    chmod 600 /root/.my.cnf
    mysql -e "DELETE FROM mysql.user WHERE User=''"
    mysql -e "DROP DATABASE test" >/dev/null 2>&1
    mysql -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%'"
    mysql -e "DELETE FROM mysql.user WHERE user='' or password='';"
    mysql -e "FLUSH PRIVILEGES"

    # Configuring phpMyAdmin
    if [ "$apache" = 'yes' ]; then
        wget http://c.vestacp.com/debian/7/pma/apache.conf -O /etc/phpmyadmin/apache.conf
        ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf.d/phpmyadmin.conf
    fi
    wget http://c.vestacp.com/debian/7/pma/config.inc.php -O /etc/phpmyadmin/config.inc.php
    chmod 777 /var/lib/phpmyadmin/tmp
fi

#----------------------------------------------------------#
#                   Configure PostgreSQL                   #
#----------------------------------------------------------#

if [ "$postgresql" = 'yes' ]; then
tc/postgresql/*/main/pg_hba.conf
    service postgresql restart
    sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '$vpass'" 2>/dev/null

    # Configuring phpPgAdmin
    if [ "$apache" = 'yes' ]; then
        wget http://c.vestacp.com/debian/7/pga/phppgadmin.conf -O /etc/apache2/conf.d/phppgadmin.conf
    fi
    wget http://c.vestacp.com/debian/7/pga/config.inc.php -O /etc/phppgadmin/config.inc.php
fi


#----------------------------------------------------------#
#                      Configure Bind                      #
#----------------------------------------------------------#

if [ "$named" = 'yes' ]; then
    wget http://c.vestacp.com/debian/7/bind/named.conf -O /etc/bind/named.conf
    sed -i "s%listen-on%//listen%" /etc/bind/named.conf.options
    chown root:bind /etc/bind/named.conf
    chmod 640 /etc/bind/named.conf
    aa-complain /usr/sbin/named 2>/dev/null
    echo "/home/** rwm," >> /etc/apparmor.d/local/usr    wget http://c.vestacp.com/debian/7/postgresql/pg_hba.conf -O /etc/postgresql/*/main/pg_hba.conf
    service postgresql restart
    sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '$vpass'" 2>/dev/null

    # Configuring phpPgAdmin
    if [ "$apache" = 'yes' ]; then
        wget http://c.vestacp.com/debian/7/pga/phppgadmin.conf -O /etc/apache2/conf.d/phppgadmin.conf
    fi
    wget http://c.vestacp.com/debian/7/pga/config.inc.php -O /etc/phppgadmin/config.inc.php
fi


#----------------------------------------------------------#
#                      Configure Bind                      #
#----------------------------------------------------------#

if [ "$named" = 'yes' ]; then
    wget http://c.vestacp.com/debian/7/bind/named.conf -O /etc/bind/named.conf
    sed -i "s%listen-on%//listen%" /etc/bind/named.conf.options
    chown root:bind /etc/bind/named.conf
    chmod 640 /etc/bind/named.conf
    aa-complain /usr/sbin/named 2>/dev/null
.sbin.named 2>/dev/null
    service apparmor status >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        service apparmor restart
    fi
    update-rc.d bind9 defaults
    service bind9 start
    check_result $? "bind9 start failed"
fi

#----------------------------------------------------------#
#                      Configure Exim                      #
#----------------------------------------------------------#

if [ "$exim" = 'yes' ]; then
    gpasswd -a Debian-exim mail
    wget http://c.vestacp.com/debian/7/exim/exim4.conf.template -O /etc/exim4/exim4.conf.template
    wget http://c.vestacp.com/debian/7/exim/dnsbl.conf -O /etc/exim4/dnsbl.conf
    wget http://c.vestacp.com/debian/7/exim/spam-blocks.conf -O /etc/exim4/spam-blocks.conf
    touch /etc/exim4/white-blocks.conf

    if [ "$spamd" = 'yes' ]; then
        sed -i "s/#SPAM/SPAM/g" /etc/exim4/exim4.conf.template
    fi
    if [ "$clamd" = 'yes' ]; then
        sed -i "s/#CLAMD/CLAMD/g" /etc/    echo "/home/** rwm," >> /etc/apparmor.d/local/usr.sbin.named 2>/dev/null
    service apparmor status >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        service apparmor restart
    fi
    update-rc.d bind9 defaults
    service bind9 start
    check_result $? "bind9 start failed"
fi

#----------------------------------------------------------#
#                      Configure Exim                      #
#----------------------------------------------------------#

if [ "$exim" = 'yes' ]; then
    gpasswd -a Debian-exim mail
    wget http://c.vestacp.com/debian/7/exim/exim4.conf.template -O /etc/exim4/exim4.conf.template
    wget http://c.vestacp.com/debian/7/exim/dnsbl.conf -O /etc/exim4/dnsbl.conf
    wget http://c.vestacp.com/debian/7/exim/spam-blocks.conf -O /etc/exim4/spam-blocks.conf
    touch /etc/exim4/white-blocks.conf

    if [ "$spamd" = 'yes' ]; then
        sed -i "s/#SPAM/SPAM/g" /etc/exim4/exim4.conf.template
    fi
    if [ "$clamd" = 'yes' ]; then
exim4/exim4.conf.template
    fi

    chmod 640 /etc/exim4/exim4.conf.template
    rm -rf /etc/exim4/domains
    mkdir -p /etc/exim4/domains

    rm -f /etc/alternatives/mta
    ln -s /usr/sbin/exim4 /etc/alternatives/mta
    update-rc.d -f sendmail remove > /dev/null 2>&1
    service sendmail stop > /dev/null 2>&1
    update-rc.d -f postfix remove > /dev/null 2>&1
    service postfix stop > /dev/null 2>&1

    update-rc.d exim4 defaults
    service exim4 start
    check_result $? "exim4 start failed"
fi


#----------------------------------------------------------#
#                     Configure Dovecot                    #
#----------------------------------------------------------#

if [ "$dovecot" = 'yes' ]; then
    gpasswd -a dovecot mail
    wget http://c.vestacp.com/debian/7/dovecot.tar.gz -O /etc/dovecot.tar.gz
    wget http://c.vestacp.com/debian/7/logrotate/dovecot -O /etc/logrotate.d/dovecot
    cd /etc
    rm -rf dovecot dovecot.conf
    tar -xzf doveco        sed -i "s/#CLAMD/CLAMD/g" /etc/exim4/exim4.conf.template
    fi

    chmod 640 /etc/exim4/exim4.conf.template
    rm -rf /etc/exim4/domains
    mkdir -p /etc/exim4/domains

    rm -f /etc/alternatives/mta
    ln -s /usr/sbin/exim4 /etc/alternatives/mta
    update-rc.d -f sendmail remove > /dev/null 2>&1
    service sendmail stop > /dev/null 2>&1
    update-rc.d -f postfix remove > /dev/null 2>&1
    service postfix stop > /dev/null 2>&1

    update-rc.d exim4 defaults
    service exim4 start
    check_result $? "exim4 start failed"
fi


#----------------------------------------------------------#
#                     Configure Dovecot                    #
#----------------------------------------------------------#

if [ "$dovecot" = 'yes' ]; then
    gpasswd -a dovecot mail
    wget http://c.vestacp.com/debian/7/dovecot.tar.gz -O /etc/dovecot.tar.gz
    wget http://c.vestacp.com/debian/7/logrotate/dovecot -O /etc/logrotate.d/dovecot
    cd /etc
    rm -rf dovecot dovecot.conf
t.tar.gz
    rm -f dovecot.tar.gz
    chown -R root:root /etc/dovecot*
    update-rc.d dovecot defaults
    service dovecot start
    check_result $? "dovecot start failed"
fi


#----------------------------------------------------------#
#                     Configure ClamAV                     #
#----------------------------------------------------------#

if [ "$clamd" = 'yes' ]; then
    gpasswd -a clamav mail
    gpasswd -a clamav Debian-exim
    wget http://c.vestacp.com/debian/7/clamav/clamd.conf -O /etc/clamav/clamd.conf
    /usr/bin/freshclam
    update-rc.d clamav-daemon defaults
    if [ ! -d "/var/run/clamav" ]; then
        mkdir /var/run/clamav
    fi
    chown -R clamav:clamav /var/run/clamav
    if [ -f "/lib/systemd/system/clamav-daemon.service" ]; then
        file="/lib/systemd/system/clamav-daemon.service"
        if [ $( grep -ic "mkdir" $file ) -eq 0 ]; then
            sed -i "s/\[Service\]/\[Service\]\nExecStartPre = \/bin\/mkdir -p \/var\/run\/clamav\nExecS    tar -xzf dovecot.tar.gz
    rm -f dovecot.tar.gz
    chown -R root:root /etc/dovecot*
    update-rc.d dovecot defaults
    service dovecot start
    check_result $? "dovecot start failed"
fi


#----------------------------------------------------------#
#                     Configure ClamAV                     #
#----------------------------------------------------------#

if [ "$clamd" = 'yes' ]; then
    gpasswd -a clamav mail
    gpasswd -a clamav Debian-exim
    wget http://c.vestacp.com/debian/7/clamav/clamd.conf -O /etc/clamav/clamd.conf
    /usr/bin/freshclam
    update-rc.d clamav-daemon defaults
    if [ ! -d "/var/run/clamav" ]; then
        mkdir /var/run/clamav
    fi
    chown -R clamav:clamav /var/run/clamav
    if [ -f "/lib/systemd/system/clamav-daemon.service" ]; then
        file="/lib/systemd/system/clamav-daemon.service"
        if [ $( grep -ic "mkdir" $file ) -eq 0 ]; then
re = \/bin\/chown -R clamav:clamav \/var\/run\/clamav/g" $file
        fi
    fi

    service clamav-daemon start
    check_result $? "clamav-daeom start failed"
fi


#----------------------------------------------------------#
#                  Configure SpamAssassin                  #
#----------------------------------------------------------#

if [ "$spamd" = 'yes' ]; then
    update-rc.d spamassassin defaults
    sed -i "s/ENABLED=0/ENABLED=1/" /etc/default/spamassassin
    service spamassassin start
    check_result $? "spamassassin start failed"
    if [[ $(systemctl list-unit-files | grep spamassassin) =~ "disabled" ]]; then
        systemctl enable spamassassin
    fi
fi


#----------------------------------------------------------#
#                   Configure RoundCube                    #
#----------------------------------------------------------#

if [ "$exim" = 'yes' ] && [ "$mysql" =            sed -i "s/\[Service\]/\[Service\]\nExecStartPre = \/bin\/mkdir -p \/var\/run\/clamav\nExecStartPre = \/bin\/chown -R clamav:clamav \/var\/run\/clamav/g" $file
        fi
    fi

    service clamav-daemon start
    check_result $? "clamav-daeom start failed"
fi


#----------------------------------------------------------#
#                  Configure SpamAssassin                  #
#----------------------------------------------------------#

if [ "$spamd" = 'yes' ]; then
    update-rc.d spamassassin defaults
    sed -i "s/ENABLED=0/ENABLED=1/" /etc/default/spamassassin
    service spamassassin start
    check_result $? "spamassassin start failed"
    if [[ $(systemctl list-unit-files | grep spamassassin) =~ "disabled" ]]; then
        systemctl enable spamassassin
    fi
fi


#----------------------------------------------------------#
#                   Configure RoundCube                    #
#----------------------------------------------------------#

 'yes' ]; then
    if [ "$apache" = 'yes' ]; then
        wget http://c.vestacp.com/debian/7/roundcube/apache.conf -O /etc/roundcube/apache.conf
        ln -s /etc/roundcube/apache.conf /etc/apache2/conf.d/roundcube.conf
    fi
    wget http://c.vestacp.com/debian/7/roundcube/main.inc.php -O /etc/roundcube/main.inc.php
    wget http://c.vestacp.com/debian/7/roundcube/db.inc.php -O /etc/roundcube/db.inc.php
    wget http://c.vestacp.com/debian/7/roundcube/vesta.php -O \
        /usr/share/roundcube/plugins/password/drivers/vesta.php
    wget http://c.vestacp.com/debian/7/roundcube/config.inc.php -O \
        /etc/roundcube/plugins/password/config.inc.php
    r="$(gen_pass)"
    mysql -e "CREATE DATABASE roundcube"
    mysql -e "GRANT ALL ON roundcube.* TO roundcube@localhost IDENTIFIED BY '$r'"
    sed -i "s/%password%/$r/g" /etc/roundcube/db.inc.php
    sed -i "s/localhost/$servername/g" /etc/roundcube/plugins/password/config.inc.php
    mysql roundcube < /usr/sharif [ "$exim" = 'yes' ] && [ "$mysql" = 'yes' ]; then
    if [ "$apache" = 'yes' ]; then
        wget http://c.vestacp.com/debian/7/roundcube/apache.conf -O /etc/roundcube/apache.conf
        ln -s /etc/roundcube/apache.conf /etc/apache2/conf.d/roundcube.conf
    fi
    wget http://c.vestacp.com/debian/7/roundcube/main.inc.php -O /etc/roundcube/main.inc.php
    wget http://c.vestacp.com/debian/7/roundcube/db.inc.php -O /etc/roundcube/db.inc.php
    wget http://c.vestacp.com/debian/7/roundcube/vesta.php -O \
        /usr/share/roundcube/plugins/password/drivers/vesta.php
    wget http://c.vestacp.com/debian/7/roundcube/config.inc.php -O \
        /etc/roundcube/plugins/password/config.inc.php
    r="$(gen_pass)"
    mysql -e "CREATE DATABASE roundcube"
    mysql -e "GRANT ALL ON roundcube.* TO roundcube@localhost IDENTIFIED BY '$r'"
    sed -i "s/%password%/$r/g" /etc/roundcube/db.inc.php
    sed -i "s/localhost/$servername/g" /etc/roundcube/plugins/password/config.inc.php
e/dbconfig-common/data/roundcube/install/mysql
    chmod a+r /etc/roundcube/main.inc.php
    if [ 7 -eq 8 ]; then
        mv -f /etc/roundcube/main.inc.php /etc/roundcube/config.inc.php
        mv -f /etc/roundcube/db.inc.php /etc/roundcube/debian-db-roundcube.php

        # RoundCube tinyMCE fix
        tinymceFixArchiveURL=http://c.vestacp.com/debian/7/roundcube/roundcube-tinymce.tar.gz
        tinymceParentFolder=/usr/share/roundcube/program/js
        tinymceFolder=$tinymceParentFolder/tinymce
        tinymceBadJS=$tinymceFolder/tiny_mce.js
        tinymceFixArchive=$tinymceParentFolder/roundcube-tinymce.tar.gz
        if [[ -L "$tinymceFolder" && -d "$tinymceFolder" ]]; then
            if [ -f "$tinymceBadJS" ]; then
                wget $tinymceFixArchiveURL -O $tinymceFixArchive
                if [[ -f "$tinymceFixArchive" && -s "$tinymceFixArchive" ]]; then
                    rm $tinymceFolder
                    tar -xzf $tinymceFixArchive -C $tinymcePare    mysql roundcube < /usr/share/dbconfig-common/data/roundcube/install/mysql
    chmod a+r /etc/roundcube/main.inc.php
    if [ 7 -eq 8 ]; then
        mv -f /etc/roundcube/main.inc.php /etc/roundcube/config.inc.php
        mv -f /etc/roundcube/db.inc.php /etc/roundcube/debian-db-roundcube.php

        # RoundCube tinyMCE fix
        tinymceFixArchiveURL=http://c.vestacp.com/debian/7/roundcube/roundcube-tinymce.tar.gz
        tinymceParentFolder=/usr/share/roundcube/program/js
        tinymceFolder=$tinymceParentFolder/tinymce
        tinymceBadJS=$tinymceFolder/tiny_mce.js
        tinymceFixArchive=$tinymceParentFolder/roundcube-tinymce.tar.gz
        if [[ -L "$tinymceFolder" && -d "$tinymceFolder" ]]; then
            if [ -f "$tinymceBadJS" ]; then
                wget $tinymceFixArchiveURL -O $tinymceFixArchive
                if [[ -f "$tinymceFixArchive" && -s "$tinymceFixArchive" ]]; then
                    rm $tinymceFolder
ntFolder
                    rm $tinymceFixArchive
                    chown -R root:root $tinymceFolder
                else
                    echo "File roundcube-tinymce.tar.gz is not downloaded, RoundCube tinyMCE fix is not applied"
                    rm $tinymceFixArchive
                fi
            fi
        fi

    fi
fi


#----------------------------------------------------------#
#                    Configure Fail2Ban                    #
#----------------------------------------------------------#

if [ "$fail2ban" = 'yes' ]; then
    cd /etc
    wget http://c.vestacp.com/debian/7/fail2ban.tar.gz -O fail2ban.tar.gz
    tar -xzf fail2ban.tar.gz
    rm -f fail2ban.tar.gz
    if [ "$dovecot" = 'no' ]; then
        fline='/etc/fail2ban/jail.local'
        fline=$(echo "$fline" |grep enabled |tail -n1 |cut -f 1 -d -)
        sed -i "${fline}s/true/false/" /etc/fail2ban/jail.local
    fi
    if [ "$exim" = 'no' ]; then
        flin                    tar -xzf $tinymceFixArchive -C $tinymceParentFolder
                    rm $tinymceFixArchive
                    chown -R root:root $tinymceFolder
                else
                    echo "File roundcube-tinymce.tar.gz is not downloaded, RoundCube tinyMCE fix is not applied"
                    rm $tinymceFixArchive
                fi
            fi
        fi

    fi
fi


#----------------------------------------------------------#
#                    Configure Fail2Ban                    #
#----------------------------------------------------------#

if [ "$fail2ban" = 'yes' ]; then
    cd /etc
    wget http://c.vestacp.com/debian/7/fail2ban.tar.gz -O fail2ban.tar.gz
    tar -xzf fail2ban.tar.gz
    rm -f fail2ban.tar.gz
    if [ "$dovecot" = 'no' ]; then
        fline='/etc/fail2ban/jail.local'
        fline=$(echo "$fline" |grep enabled |tail -n1 |cut -f 1 -d -)
        sed -i "${fline}s/true/false/" /etc/fail2ban/jail.local
    fi
    if [ "$exim" = 'no' ]; then
e=$(cat /etc/fail2ban/jail.local |grep -n exim-iptables -A 2)
        fline=$(echo "$fline" |grep enabled |tail -n1 |cut -f 1 -d -)
        sed -i "${fline}s/true/false/" /etc/fail2ban/jail.local
    fi
    update-rc.d fail2ban defaults
    service fail2ban start
    check_result $? "fail2ban start failed"
fi


#----------------------------------------------------------#
#                   Configure Admin User                   #
#----------------------------------------------------------#

# Deleting old admin user
if [ ! -z "$(grep ^admin: /etc/passwd)" ] && [ "$force" = 'yes' ]; then
    chattr -i /home/admin/conf > /dev/null 2>&1
    userdel -f admin >/dev/null 2>&1
    chattr -i /home/admin/conf >/dev/null 2>&1
    mv -f /home/admin  $vst_backups/home/ >/dev/null 2>&1
    rm -f /tmp/sess_* >/dev/null 2>&1
fi
if [ ! -z "$(grep ^admin: /etc/group)" ] && [ "$force" = 'yes' ]; then
    groupdel admin > /dev/null 2>&1
fi

# Adding vesta account
/usr/local/vesta/bin/v-add-user admi        fline=$(cat /etc/fail2ban/jail.local |grep -n exim-iptables -A 2)
        fline=$(echo "$fline" |grep enabled |tail -n1 |cut -f 1 -d -)
        sed -i "${fline}s/true/false/" /etc/fail2ban/jail.local
    fi
    update-rc.d fail2ban defaults
    service fail2ban start
    check_result $? "fail2ban start failed"
fi


#----------------------------------------------------------#
#                   Configure Admin User                   #
#----------------------------------------------------------#

# Deleting old admin user
if [ ! -z "$(grep ^admin: /etc/passwd)" ] && [ "$force" = 'yes' ]; then
    chattr -i /home/admin/conf > /dev/null 2>&1
    userdel -f admin >/dev/null 2>&1
    chattr -i /home/admin/conf >/dev/null 2>&1
    mv -f /home/admin  $vst_backups/home/ >/dev/null 2>&1
    rm -f /tmp/sess_* >/dev/null 2>&1
fi
if [ ! -z "$(grep ^admin: /etc/group)" ] && [ "$force" = 'yes' ]; then
    groupdel admin > /dev/null 2>&1
fi

# Adding vesta account
il default System Administrator
check_result $? "can't create admin user"
/usr/local/vesta/bin/v-change-user-shell admin bash
/usr/local/vesta/bin/v-change-user-language admin $lang

# RoundCube permissions fix
if [ "$exim" = 'yes' ] && [ "$mysql" = 'yes' ]; then
    if [ ! -d "/var/log/roundcube" ]; then
        mkdir /var/log/roundcube
    fi
    chown admin:admin /var/log/roundcube
fi

# Configuring system ips
/usr/local/vesta/bin/v-update-sys-ip

# Get main ip
ip=$(ip addr|grep 'inet '|grep global|head -n1|awk '{print $2}'|cut -f1 -d/)
copy_of_ip=$ip

# Firewall configuration
if [ "$iptables" = 'yes' ]; then
    /usr/local/vesta/bin/v-update-firewall
fi

# Get public ip
pub_ip=$(curl -s http://c.vestacp.com/debian/7.com/what-is-my-ip/)

if [ ! -z "$pub_ip" ] && [ "$pub_ip" != "$ip" ]; then
    /usr/local/vesta/bin/v-change-sys-ip-nat $ip $pub_ip
    ip=$pub_ip
fi

# Configuring libapache2-mod-remoteip
if [ "$apache" = 'yes' ] && [ "$nginx"  = 'yes' /usr/local/vesta/bin/v-add-user admin $vpass $email default System Administrator
check_result $? "can't create admin user"
/usr/local/vesta/bin/v-change-user-shell admin bash
/usr/local/vesta/bin/v-change-user-language admin $lang

# RoundCube permissions fix
if [ "$exim" = 'yes' ] && [ "$mysql" = 'yes' ]; then
    if [ ! -d "/var/log/roundcube" ]; then
        mkdir /var/log/roundcube
    fi
    chown admin:admin /var/log/roundcube
fi

# Configuring system ips
/usr/local/vesta/bin/v-update-sys-ip

# Get main ip
ip=$(ip addr|grep 'inet '|grep global|head -n1|awk '{print $2}'|cut -f1 -d/)
copy_of_ip=$ip

# Firewall configuration
if [ "$iptables" = 'yes' ]; then
    /usr/local/vesta/bin/v-update-firewall
fi

# Get public ip
pub_ip=$(curl -s http://c.vestacp.com/debian/7.com/what-is-my-ip/)

if [ ! -z "$pub_ip" ] && [ "$pub_ip" != "$ip" ]; then
    /usr/local/vesta/bin/v-change-sys-ip-nat $ip $pub_ip
    ip=$pub_ip
fi

# Configuring libapache2-mod-remoteip
] ; then
    copy_of_pub_ip=$pub_ip
    echo "<IfModule mod_remoteip.c>" > /etc/apache2/mods-available/remoteip.conf
    echo "  RemoteIPHeader X-Real-IP" >> /etc/apache2/mods-available/remoteip.conf
    if [ "$copy_of_ip" != "127.0.0.1" ] && [ "$copy_of_pub_ip" != "127.0.0.1" ]; then
        echo "  RemoteIPInternalProxy 127.0.0.1" >> /etc/apache2/mods-available/remoteip.conf
    fi
    if [ ! -z "$copy_of_ip" ] && [ "$copy_of_ip" != "$copy_of_pub_ip" ]; then
        echo "  RemoteIPInternalProxy $copy_of_ip" >> /etc/apache2/mods-available/remoteip.conf
    fi
    if [ ! -z "$copy_of_pub_ip" ]; then
        echo "  RemoteIPInternalProxy $copy_of_pub_ip" >> /etc/apache2/mods-available/remoteip.conf
    fi
    echo "</IfModule>" >> /etc/apache2/mods-available/remoteip.conf
    sed -i "s/LogFormat \"%h/LogFormat \"%a/g" /etc/apache2/apache2.conf
    a2enmod remoteip
    service apache2 restart
fi

# Configuring mysql host
if [ "$mysql" = 'yes' ]; then
    /usr/if [ "$apache" = 'yes' ] && [ "$nginx"  = 'yes' ] ; then
    copy_of_pub_ip=$pub_ip
    echo "<IfModule mod_remoteip.c>" > /etc/apache2/mods-available/remoteip.conf
    echo "  RemoteIPHeader X-Real-IP" >> /etc/apache2/mods-available/remoteip.conf
    if [ "$copy_of_ip" != "127.0.0.1" ] && [ "$copy_of_pub_ip" != "127.0.0.1" ]; then
        echo "  RemoteIPInternalProxy 127.0.0.1" >> /etc/apache2/mods-available/remoteip.conf
    fi
    if [ ! -z "$copy_of_ip" ] && [ "$copy_of_ip" != "$copy_of_pub_ip" ]; then
        echo "  RemoteIPInternalProxy $copy_of_ip" >> /etc/apache2/mods-available/remoteip.conf
    fi
    if [ ! -z "$copy_of_pub_ip" ]; then
        echo "  RemoteIPInternalProxy $copy_of_pub_ip" >> /etc/apache2/mods-available/remoteip.conf
    fi
    echo "</IfModule>" >> /etc/apache2/mods-available/remoteip.conf
    sed -i "s/LogFormat \"%h/LogFormat \"%a/g" /etc/apache2/apache2.conf
    a2enmod remoteip
    service apache2 restart
fi

# Configuring mysql host
if [ "$mysql" = 'yes' ]; then
local/vesta/bin/v-add-database-host mysql localhost root $vpass
    /usr/local/vesta/bin/v-add-database admin default default $(gen_pass) mysql
fi

# Configuring pgsql host
if [ "$postgresql" = 'yes' ]; then
    /usr/local/vesta/bin/v-add-database-host pgsql localhost postgres $vpass
    /usr/local/vesta/bin/v-add-database admin db db $(gen_pass) pgsql
fi

# Adding default domain
/usr/local/vesta/bin/v-add-domain admin $servername
check_result $? "can't create $servername domain"

# Adding cron jobs
command="sudo /usr/local/vesta/bin/v-update-sys-queue disk"
/usr/local/vesta/bin/v-add-cron-job 'admin' '15' '02' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-update-sys-queue traffic"
/usr/local/vesta/bin/v-add-cron-job 'admin' '10' '00' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-update-sys-queue webstats"
/usr/local/vesta/bin/v-add-cron-job 'admin' '30' '03' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-update-sys-queue backup"
/usr/    /usr/local/vesta/bin/v-add-database-host mysql localhost root $vpass
    /usr/local/vesta/bin/v-add-database admin default default $(gen_pass) mysql
fi

# Configuring pgsql host
if [ "$postgresql" = 'yes' ]; then
    /usr/local/vesta/bin/v-add-database-host pgsql localhost postgres $vpass
    /usr/local/vesta/bin/v-add-database admin db db $(gen_pass) pgsql
fi

# Adding default domain
/usr/local/vesta/bin/v-add-domain admin $servername
check_result $? "can't create $servername domain"

# Adding cron jobs
command="sudo /usr/local/vesta/bin/v-update-sys-queue disk"
/usr/local/vesta/bin/v-add-cron-job 'admin' '15' '02' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-update-sys-queue traffic"
/usr/local/vesta/bin/v-add-cron-job 'admin' '10' '00' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-update-sys-queue webstats"
/usr/local/vesta/bin/v-add-cron-job 'admin' '30' '03' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-update-sys-queue backup"
a/bin/v-add-cron-job 'admin' '*/5' '*' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-backup-users"
/usr/local/vesta/bin/v-add-cron-job 'admin' '10' '05' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-update-user-stats"
/usr/local/vesta/bin/v-add-cron-job 'admin' '20' '00' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-update-sys-rrd"
/usr/local/vesta/bin/v-add-cron-job 'admin' '*/5' '*' '*' '*' '*' "$command"
service cron restart

# Building inititall rrd images
/usr/local/vesta/bin/v-update-sys-rrd

# Enabling file system quota
if [ "$quota" = 'yes' ]; then
    /usr/local/vesta/bin/v-add-sys-quota
fi

# Starting vesta service
update-rc.d vesta defaults
service vesta start
check_result $? "vesta start failed"
chown admin:admin /usr/local/vesta/data/sessions

# Adding notifications
/usr/local/vesta/upd/add_notifications.sh

# Adding cronjob for autoupdates
/usr/local/vesta/bin/v-add-cron-vesta-autoupdate


#-----------------------/usr/local/vesta/bin/v-add-cron-job 'admin' '*/5' '*' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-backup-users"
/usr/local/vesta/bin/v-add-cron-job 'admin' '10' '05' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-update-user-stats"
/usr/local/vesta/bin/v-add-cron-job 'admin' '20' '00' '*' '*' '*' "$command"
command="sudo /usr/local/vesta/bin/v-update-sys-rrd"
/usr/local/vesta/bin/v-add-cron-job 'admin' '*/5' '*' '*' '*' '*' "$command"
service cron restart

# Building inititall rrd images
/usr/local/vesta/bin/v-update-sys-rrd

# Enabling file system quota
if [ "$quota" = 'yes' ]; then
    /usr/local/vesta/bin/v-add-sys-quota
fi

# Starting vesta service
update-rc.d vesta defaults
service vesta start
check_result $? "vesta start failed"
chown admin:admin /usr/local/vesta/data/sessions

# Adding notifications
/usr/local/vesta/upd/add_notifications.sh

# Adding cronjob for autoupdates
/usr/local/vesta/bin/v-add-cron-vesta-autoupdate


-----------------------#
#                   Vesta Access Info                      #
#----------------------------------------------------------#

# Sending install notification to http://c.vestacp.com/debian/7.com
wget http://c.vestacp.com/debian/7.com/notify/?wheezy -O /dev/null -q

# Comparing hostname and ip
host_ip=$(host $servername| head -n 1 | awk '{print $NF}')
if [ "$host_ip" = "$ip" ]; then
    ip="$servername"
fi

# Sending notification to admin email
echo -e "Congratulations, you have just successfully installed \
Vesta Control Panel

    https://$ip:8083
    username: admin
    password: $vpass

We hope that you enjoy your installation of Vesta. Please \
feel free to contact us anytime if you have any questions.
Thank you.

--
Sincerely yours
http://c.vestacp.com/debian/7.com team
" > $tmpfile

send_mail="/usr/local/vesta/web/inc/mail-wrapper.php"
cat $tmpfile | $send_mail -s "Vesta Control Panel" $email

# Congrats
echo '===============================#----------------------------------------------------------#
#                   Vesta Access Info                      #
#----------------------------------------------------------#

# Sending install notification to http://c.vestacp.com/debian/7.com
wget http://c.vestacp.com/debian/7.com/notify/?wheezy -O /dev/null -q

# Comparing hostname and ip
host_ip=$(host $servername| head -n 1 | awk '{print $NF}')
if [ "$host_ip" = "$ip" ]; then
    ip="$servername"
fi

# Sending notification to admin email
echo -e "Congratulations, you have just successfully installed \
Vesta Control Panel

    https://$ip:8083
    username: admin
    password: $vpass

We hope that you enjoy your installation of Vesta. Please \
feel free to contact us anytime if you have any questions.
Thank you.

--
Sincerely yours
http://c.vestacp.com/debian/7.com team
" > $tmpfile

send_mail="/usr/local/vesta/web/inc/mail-wrapper.php"
cat $tmpfile | $send_mail -s "Vesta Control Panel" $email

# Congrats
========================'
echo
echo ' _|      _|  _|_|_|_|    _|_|_|  _|_|_|_|_|    _|_|   '
echo ' _|      _|  _|        _|            _|      _|    _| '
echo ' _|      _|  _|_|_|      _|_|        _|      _|_|_|_| '
echo '   _|  _|    _|              _|      _|      _|    _| '
echo '     _|      _|_|_|_|  _|_|_|        _|      _|    _| '
echo
echo
cat $tmpfile
rm -f $tmpfile

# EOF
echo '======================================================='
echo
echo ' _|      _|  _|_|_|_|    _|_|_|  _|_|_|_|_|    _|_|   '
echo ' _|      _|  _|        _|            _|      _|    _| '
echo ' _|      _|  _|_|_|      _|_|        _|      _|_|_|_| '
echo '   _|  _|    _|              _|      _|      _|    _| '
echo '     _|      _|_|_|_|  _|_|_|        _|      _|    _| '
echo
echo
cat $tmpfile
rm -f $tmpfile

# EOF
