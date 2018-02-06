#!/bin/bash
docker run --restart=always  -d --network sviluppo --name mysql -e "MYSQL_ALLOW_EMPTY_PASSWORD=yes" -v ${VOLUME_DIR}mysql:/var/lib/mysql mysql:5.7.20