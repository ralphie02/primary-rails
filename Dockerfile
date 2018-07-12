FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /primary
WORKDIR /primary
COPY Gemfile /primary/Gemfile
COPY Gemfile.lock /primary/Gemfile.lock
RUN bundle install
COPY . /primary
