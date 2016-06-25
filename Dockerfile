FROM centos:6.6

RUN yum update -y && \
  yum install -y \
    gcc \
    gcc-c++ \
    libyaml && \
  curl -fsSLO "https://github.com/feedforce/ruby-rpm/releases/download/2.3.1/ruby-2.3.1-1.el6.x86_64.rpm" && \
  rpm --install ruby-2.3.1-1.el6.x86_64.rpm && \
  yum clean all && \
  gem install bundler --no-document

ADD Gemfile.lock .
ADD Gemfile .

RUN bundle install --jobs 4

ADD app.rb .
