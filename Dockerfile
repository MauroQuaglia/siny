FROM ruby:3.1.1

RUN mkdir /app
WORKDIR /app

COPY . ./
RUN bundle install

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]


#IMMAGINE:  docker build -t siny:test .
#NETWORK:   docker network create -d bridge siny_net
#CONTAINER: docker container run --name siny_test -p 4567:4567 -v /tmp/siny:/app/log --network=siny_net -it siny:test

# Faccio una prova da un altro container:
# docker container run --name mq --network=siny_net -it ubuntu:latest /bin/bash
# apt-get update && apt-get install iputils-ping -y
# ping siny_test (il ping per nome funziona perché sono sulla stessa rete bridge siny_net)
# Se non avessi specificato e creato la rete siny_net e dossero solo sulla bridge di default funzionerebbe solo il ping per IP.