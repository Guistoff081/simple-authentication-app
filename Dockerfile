FROM ruby:3.2.2

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    postgresql-client

RUN gem install bundler

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

ENTRYPOINT ["./docker-entrypoint.sh"]

EXPOSE 3000

