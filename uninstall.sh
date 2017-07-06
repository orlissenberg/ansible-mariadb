#!/usr/bin/env bash

echo "Are you sure? Got backups?"
exit 1

# apt list --installed | grep mysql
# apt list --installed | grep apache
# sudo netstat -tulpn | grep :3306

service mariadb stop
systemctl disable mariadb

apt-get remove --purge python-mysqldb mariadb-server-10.2 -y

rm /var/lib/mysql -R 2> /dev/null

rm /var/run/mysqld -R 2> /dev/null

rm /usr/share/phpmyadmin -R 2> /dev/null

rm /root/.my.cnf 2> /dev/null

rm /etc/mysql/my.cnf 2> /dev/null

#cd /tmp/percona-toolkit-3.0.3
#sudo make uninstall

unlink /usr/local/bin/glide 2> /dev/null
unlink /usr/local/bin/govendor 2> /dev/null
unlink /usr/local/bin/pt-align 2> /dev/null
unlink /usr/local/bin/pt-archiver 2> /dev/null
unlink /usr/local/bin/pt-config-diff 2> /dev/null
unlink /usr/local/bin/pt-deadlock-logger 2> /dev/null
unlink /usr/local/bin/pt-diskstats 2> /dev/null
unlink /usr/local/bin/pt-duplicate-key-checker 2> /dev/null
unlink /usr/local/bin/pt-fifo-split 2> /dev/null
unlink /usr/local/bin/pt-find 2> /dev/null
unlink /usr/local/bin/pt-fingerprint 2> /dev/null
unlink /usr/local/bin/pt-fk-error-logger 2> /dev/null
unlink /usr/local/bin/pt-heartbeat 2> /dev/null
unlink /usr/local/bin/pt-index-usage 2> /dev/null
unlink /usr/local/bin/pt-ioprofile 2> /dev/null
unlink /usr/local/bin/pt-kill 2> /dev/null
unlink /usr/local/bin/pt-mext 2> /dev/null
unlink /usr/local/bin/pt-mongodb-query-digest 2> /dev/null
unlink /usr/local/bin/pt-mongodb-summary 2> /dev/null
unlink /usr/local/bin/pt-mysql-summary 2> /dev/null
unlink /usr/local/bin/pt-online-schema-change 2> /dev/null
unlink /usr/local/bin/pt-pmp 2> /dev/null
unlink /usr/local/bin/pt-query-digest 2> /dev/null
unlink /usr/local/bin/pt-show-grants 2> /dev/null
unlink /usr/local/bin/pt-sift 2> /dev/null
unlink /usr/local/bin/pt-slave-delay 2> /dev/null
unlink /usr/local/bin/pt-slave-find 2> /dev/null
unlink /usr/local/bin/pt-slave-restart 2> /dev/null
unlink /usr/local/bin/pt-stalk 2> /dev/null
unlink /usr/local/bin/pt-summary 2> /dev/null
unlink /usr/local/bin/pt-table-checksum 2> /dev/null
unlink /usr/local/bin/pt-table-sync 2> /dev/null
unlink /usr/local/bin/pt-table-usage 2> /dev/null
unlink /usr/local/bin/pt-upgrade 2> /dev/null
unlink /usr/local/bin/pt-variable-advisor 2> /dev/null
unlink /usr/local/bin/pt-visual-explain 2> /dev/null
unlink /usr/local/man/man1/glide.1p 2> /dev/null
unlink /usr/local/man/man1/govendor.1p 2> /dev/null
unlink /usr/local/man/man1/percona-toolkit.1p 2> /dev/null
unlink /usr/local/man/man1/pt-align.1p 2> /dev/null
unlink /usr/local/man/man1/pt-archiver.1p 2> /dev/null
unlink /usr/local/man/man1/pt-config-diff.1p 2> /dev/null
unlink /usr/local/man/man1/pt-deadlock-logger.1p 2> /dev/null
unlink /usr/local/man/man1/pt-diskstats.1p 2> /dev/null
unlink /usr/local/man/man1/pt-duplicate-key-checker.1p 2> /dev/null
unlink /usr/local/man/man1/pt-fifo-split.1p 2> /dev/null
unlink /usr/local/man/man1/pt-find.1p 2> /dev/null
unlink /usr/local/man/man1/pt-fingerprint.1p 2> /dev/null
unlink /usr/local/man/man1/pt-fk-error-logger.1p 2> /dev/null
unlink /usr/local/man/man1/pt-heartbeat.1p 2> /dev/null
unlink /usr/local/man/man1/pt-index-usage.1p 2> /dev/null
unlink /usr/local/man/man1/pt-ioprofile.1p 2> /dev/null
unlink /usr/local/man/man1/pt-kill.1p 2> /dev/null
unlink /usr/local/man/man1/pt-mext.1p 2> /dev/null
unlink /usr/local/man/man1/pt-mysql-summary.1p 2> /dev/null
unlink /usr/local/man/man1/pt-online-schema-change.1p 2> /dev/null
unlink /usr/local/man/man1/pt-pmp.1p 2> /dev/null
unlink /usr/local/man/man1/pt-query-digest.1p 2> /dev/null
unlink /usr/local/man/man1/pt-show-grants.1p 2> /dev/null
unlink /usr/local/man/man1/pt-sift.1p 2> /dev/null
unlink /usr/local/man/man1/pt-slave-delay.1p 2> /dev/null
unlink /usr/local/man/man1/pt-slave-find.1p 2> /dev/null
unlink /usr/local/man/man1/pt-slave-restart.1p 2> /dev/null
unlink /usr/local/man/man1/pt-stalk.1p 2> /dev/null
unlink /usr/local/man/man1/pt-summary.1p 2> /dev/null
unlink /usr/local/man/man1/pt-table-checksum.1p 2> /dev/null
unlink /usr/local/man/man1/pt-table-sync.1p 2> /dev/null
unlink /usr/local/man/man1/pt-table-usage.1p 2> /dev/null
unlink /usr/local/man/man1/pt-upgrade.1p 2> /dev/null
unlink /usr/local/man/man1/pt-variable-advisor.1p 2> /dev/null
unlink /usr/local/man/man1/pt-visual-explain.1p 2> /dev/null
unlink /usr/local/lib/x86_64-linux-gnu/perl/5.20.2/auto/percona-toolkit/.packlist 2> /dev/null
