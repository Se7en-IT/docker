#!/bin/bash
docker run --restart=always  -d --network sviluppo --name mongo -v ${VOLUME_DIR}mongo:/data/db -p 27017:27017 mongo:3.5.13