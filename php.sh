#!/bin/bash
docker run --rm --name php --network sviluppo  -e "XDEBUG_CONFIG=remote_host=192.168.30.26" -v ${PWD}:/var/www/html -p 80:80 seven782/pxmm