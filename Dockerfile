# SHA from https://github.com/ezcater/ruby-docker
FROM ezcater-production.jfrog.io/ruby:9443b94540

COPY Gemfile Gemfile.lock /usr/src/app/

RUN bundle install

COPY . /usr/src/app

EXPOSE 3000
CMD ["rails", "server", "-p", "3000", "-b", "0.0.0.0"]
