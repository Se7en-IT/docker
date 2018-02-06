#!/bin/bash
docker run --restart=always -d --network sviluppo --name jenkins -v ${VOLUME_DIR}jenkins:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins