FROM ruby:2.5.1

RUN gem install execjs
RUN gem install therubyracer
RUN gem 'rake'
RUN gem 'html-proofer'
