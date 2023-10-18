ARG VERSION=latest
FROM mariadb:${VERSION}
LABEL maintainer="TomoProg"
RUN apt-get update && apt-get install -y \
	vim-tiny \
	curl \
	unzip

RUN curl https://downloads.mysql.com/docs/world-db.zip > /tmp/database.zip
RUN unzip -d /docker-entrypoint-initdb.d -j /tmp/database.zip
#RUN mariadb -h localhost -u root  < /tmp/world.sql
