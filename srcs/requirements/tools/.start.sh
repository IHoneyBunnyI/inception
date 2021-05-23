#!/bin/bash

eval $(docker-machine env inception)
docker-compose -f srcs/docker-compose.yml --env-file srcs/.env build 
docker-compose -f srcs/docker-compose.yml --env-file srcs/.env up
