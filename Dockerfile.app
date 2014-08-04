FROM yuumi3/ruby:2.1.2

RUN mkdir /home/app
WORKDIR /home/app
ADD Gemfile /home/app/Gemfile
RUN bundle install
ADD . /home/app
RUN rake tmp:clear
RUN rake log:clear

VOLUME  ["/home/app/log"]

ENTRYPOINT bin/start_server.sh