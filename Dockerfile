FROM ruby:3.1.1

RUN mkdir /app
WORKDIR /app

COPY . ./
RUN bundle install

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]

#IMMAGINE: docker build -t siny:test .
#CONTAINER docker container run --name siny_test -p 4567:4567 -it siny:test