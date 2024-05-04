# Use the official Ruby 3.3.0 image as a base
FROM ruby:3.3.0

# Install essential Linux packages
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    yarn

# Set an environment variable for the Rails app directory
ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Copy the Gemfile and Gemfile.lock into the image and install gems
COPY Gemfile* $APP_HOME/
RUN bundle install

# Copy the rest of the application code into the image
COPY . $APP_HOME
