#! /bin/bash

docker-compose -p traefik -f docker-compose.yml -f docker-compose.prod.yml up -d --build
