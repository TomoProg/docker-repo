FROM ruby:2.7.3
LABEL maintainer="TomoProg"
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    default-mysql-client \
    vim-tiny

RUN mkdir /myapp
WORKDIR /myapp
