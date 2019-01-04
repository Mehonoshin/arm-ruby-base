FROM ruby:2.5
MAINTAINER Stanislav Mekhonoshin <ejabberd@gmail.com>

RUN apt-get -y update
RUN apt-get -y install vim
RUN gem install foreman
COPY . /gems/
WORKDIR /gems
RUN bundle install

ENTRYPOINT ["/gems/entrypoint.sh"]
