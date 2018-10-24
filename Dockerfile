# specify the OS to use
FROM ubuntu:18.04

# specify the ruby version to use
FROM ruby:2.5.3

# RUN apk add --update build-base

# installs rails gem
RUN gem install rails -v '5.2.1'

# configure workspace
WORKDIR /app
ADD Gemfile Gemfile.lock /app/
RUN bundle install