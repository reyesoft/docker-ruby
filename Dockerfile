FROM ruby:2.5.1

# added therubyracer to use jekyll-minifier
RUN gem install execjs therubyracer

# Following 2 gems are used for searching broken links
RUN gem install rake html-proofer
