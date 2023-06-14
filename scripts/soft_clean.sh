#! /bin/bash

echo "Clean Docker for Siny..."
#docker container stop $(docker container ls | grep "siny" | awk '{print $1}')
docker container stop 'siny_test'
docker container rm 'siny_test'
docker network rm 'siny_net'
