#!/bin/bash
docker run --restart=always -d --name portainer -v ${VOLUME_DIR}portainer:/data -v /var/run/docker.sock:/var/run/docker.sock -p 9999:9000 portainer/portainer