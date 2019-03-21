FROM elixir:1.8.1

ENV NODE_VERSION 8.x
ENV NPM_VERSION 6.1.0

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash \
  && apt-get install -y nodejs \
  && apt-get install -y vim-tiny

RUN npm install npm@${NPM_VERSION} -g

RUN mix local.hex --force && \
  mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez && \
  mix local.rebar --force

RUN apt-get install -y inotify-tools

WORKDIR /app