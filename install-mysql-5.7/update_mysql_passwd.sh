#! //bin/bash

/usr/local/mysql/bin/mysql -uroot -p`cat /var/log/mysqld.log |grep 'root@localhost' |awk -F '[ ]' '{print $11}'` -e "use mysql;update user set authentication_string =password('123456'), host = '%' where user = 'root';flush privileges;"
