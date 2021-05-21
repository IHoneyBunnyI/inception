#!/bin/bash

eval $(docker-machine env inception)
docker-compose -f srcs/docker-compose.yml build
docker-compose -f srcs/docker-compose.yml up
