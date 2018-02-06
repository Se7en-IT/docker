#!/bin/bash
docker run --restart=always  -d --network sviluppo --name mysql -e "MYSQL_ALLOW_EMPTY_PASSWORD=yes" -v ${VOLUME_DIR}mysql:/var/lib/mysql mysql:5.7.20
docker run --restart=always  -d --network sviluppo --name mongo -v ${VOLUME_DIR}mongo:/data/db -p 27017:27017 mongo:3.5.13