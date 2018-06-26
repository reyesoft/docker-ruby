FROM ruby:2.5.1

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && apt-get -qq install lftp

# added therubyracer to use jekyll-minifier
RUN gem install execjs therubyracer

# Following 2 gems are used for searching broken links
RUN gem install rake html-proofer
