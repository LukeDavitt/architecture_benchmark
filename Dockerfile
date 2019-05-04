FROM ruby:2.6.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /architecture_benchmark
WORKDIR /architecture_benchmark
COPY Gemfile /architecture_benchmark/Gemfile
COPY Gemfile.lock /architecture_benchmark/Gemfile.lock
RUN gem install bundler && bundle install --jobs 20 --retry 5
COPY . /architecture_benchmark

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]