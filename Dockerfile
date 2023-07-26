ARG RAILS_ENV=development

FROM ruby:3.2.2-slim-bullseye as base
ARG RAILS_ENV
ENV RAILS_ENV=$RAILS_ENV
ENV TZ='Asia/Tokyo'
ENV APP_ROOT /covey
RUN apt update -qq && apt install -y --no-install-recommends default-mysql-client vim \
    && gem install bundler --no-document --version 2.4.6 \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT

FROM base as builder
RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends build-essential default-libmysqlclient-dev

COPY Gemfile $APP_ROOT/Gemfile
COPY Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install -j4 && rm -rf $BUNDLE_ROOT/cache/*
COPY . $APP_ROOT
# Add a script to be executed every time the container starts.
COPY entrypoint-dev.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint-dev.sh
ENTRYPOINT ["entrypoint-dev.sh"]
EXPOSE 3001 3001
