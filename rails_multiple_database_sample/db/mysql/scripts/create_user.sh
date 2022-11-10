#!/bin/bash

#mysql -h localhost -p${MYSQL_ROOT_PASSWORD} -u root -e "CREATE USER ${MYSQL_DB_USER} IDENTIFIED BY '${MYSQL_DB_PASS}';" || exit 10
#mysql -h localhost -p${MYSQL_ROOT_PASSWORD} -u root -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB_NAME}.* TO '${MYSQL_DB_USER}'@'%';" || exit 11
mysql -h localhost -p${MYSQL_ROOT_PASSWORD} -u root -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB_NAME}_test.* TO '${MYSQL_DB_USER}'@'%';" || exit 12

echo "Success!"
