FROM ruby:2.6-alpine

RUN apk update && apk upgrade

RUN apk add bash git

# to install pry
RUN apk add make gcc libc-dev

# to install pg
RUN apk add postgresql-dev

RUN rm -rf /var/cache/apk/*

RUN mkdir -p /pgrel

COPY ./ /pgrel/

WORKDIR /pgrel

RUN bundle install
