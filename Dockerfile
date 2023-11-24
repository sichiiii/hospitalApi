FROM ruby:3.0.2-bullseye as base

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs

WORKDIR /docker/app

RUN gem install bundler

COPY Gemfile* ./

RUN bundle install
RUN bundle exec rails s -p 3000 -b '0.0.0.0'
RUN rails db:create
RUN rails db:migrate

ADD . /docker/app

EXPOSE 3000

CMD ["rails","server", "-b", "0.0.0.0"]