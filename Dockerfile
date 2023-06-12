FROM ruby:3.1.1

RUN mkdir /app
WORKDIR /app

# COPY . ./
COPY Gemfile Gemfile.lock ./
RUN bundle install

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]