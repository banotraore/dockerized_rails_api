FROM ruby:3.0.0-alpine

RUN apk update      \
    && apk add bash \
    build-base      \
    postgresql-dev  \
    tzdata          \
    && rm -rf /var/cache/apk/*


# UPDATE Bundler to version 2
RUN gem update --system &&   \
  gem install bundler

WORKDIR /myapp/api

COPY Gemfile /myapp/api/Gemfile
COPY Gemfile.lock /myapp/api/Gemfile.lock


RUN bundle install
COPY . /myapp/api

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
