FROM ruby:3.3.5

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  postgresql-client

WORKDIR /rails

COPY Gemfile Gemfile.lock /rails/

RUN bundle install

COPY . .

EXPOSE 8080

CMD ["rails", "server", "-p", "8080", "-b", "0.0.0.0"]
