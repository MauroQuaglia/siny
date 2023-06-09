FROM ruby:3.1.1

RUN mkdir /app
WORKDIR /app

COPY . ./
RUN bundle install

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]


#IMMAGINE: docker build -t siny:test .
#CONTAINER docker container run --name siny_test -p 4567:4567 -v /tmp/siny:/app/log -it siny:test

#docker container run --name mq -it ubuntu:latest /bin/bash
#apt-get install iputils-ping -y
#ping l'ip del container di siny e funziona
#ping per nome e non funziona.

#giuso se volglio fare ilping per nome devo metterlo su una rete bridge specifica... insime al container mq
