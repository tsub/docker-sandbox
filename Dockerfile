FROM ruby:2.3.1-alpine

ADD ./app.rb .
CMD ["ruby", "app.rb"]
