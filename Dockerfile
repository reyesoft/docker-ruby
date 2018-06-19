FROM ruby:2.5.1

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update
RUN apt-get -qq install lftp

# added therubyracer to use jekyll-minifier
RUN gem install execjs therubyracer

# Following 2 gems are used for searching broken links
RUN gem install rake html-proofer
