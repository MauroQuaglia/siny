#!/usr/bin/env bash

source ./scripts/clean.sh

echo "Create image. Repository:siny Tag:test"
docker build -t siny:test .

echo "Create bridge network: siny_net"
docker network create -d bridge siny_net

echo "Start container on network siny_net and on docker host volume /tmp/siny"
docker container run --name siny_test -p 4567:4567 -v /tmp/siny:/app/log --network=siny_net -d -it siny:test

source ./scripts/info.sh

# Faccio una prova da un altro container:
# docker container run --name mq --network=siny_net -it ubuntu:latest /bin/bash
# apt-get update && apt-get install iputils-ping -y
# ping siny_test (il ping per nome funziona perché sono sulla stessa rete bridge siny_net)
# Se non avessi specificato e creato la rete siny_net e fossero solo sulla bridge di default funzionerebbe solo il ping per IP.
