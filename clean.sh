#! /bin/bash

echo "Clean Docker for Siny..."
docker container stop $(docker container ls | grep "siny" | awk '{print $1}')
docker container prune -f
#docker image prune -af
docker volume prune -af
docker network prune -f
