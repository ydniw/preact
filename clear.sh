#!/bin/sh

# docker swarm leave --force
docker kill $(docker ps -a -q)
docker rmi $(docker images -a -q) -f
docker system prune
docker network prune
docker volume prune
docker image prune
docker volume rm $(docker volume ls -q)