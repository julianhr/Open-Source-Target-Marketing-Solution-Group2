FROM ruby:latest

RUN apt-get update -qq && apt-get install -y build-essential
RUN apt-get install -y libpq-dev libxml2-dev libxslt1-dev libqt4-webkit \
    libqt4-dev xvfb nodejs

ENV APP_HOME /myapp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME/
RUN bundle install

COPY . $APP_HOME
