FROM ruby:2.7.1
LABEL maintainer="TomoProg"
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    default-mysql-client \
    vim-tiny

# Rails6からwebpackerが導入され、yarnをinstallする必要がある。
# ただし、何もせずにapt-getでyarnをインストールすると、どうやらインストールされるバージョンとrailsの相性が悪く、railsを起動できない。
# そのため、下記のサイトを参考にrailsが起動するyarnをインストールする。
# https://noknow.info/it/os/build_with_docker_ruby_on_rails_mysql?lang=ja#sec10
RUN apt-get install -y curl
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

RUN mkdir /myapp
WORKDIR /myapp
