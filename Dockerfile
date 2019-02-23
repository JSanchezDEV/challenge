FROM ruby:2.6.1

ADD . /usr/local/challenge
WORKDIR /usr/local/challenge
ENV RACK_ENV development
RUN bundle install
EXPOSE 9393

CMD bundle exec shotgun -o 0.0.0.0 config.ru
