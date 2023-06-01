FROM ruby:2.6.3
WORKDIR /app
COPY . /app
CMD ruby script.rb