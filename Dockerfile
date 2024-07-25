# Base image
FROM ruby:3.2.2 AS build

# Working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of your application code
COPY . .

# Precompile assets if necessary (mostly for production environments)
# RUN bundle exec rake assets:precompile

# Expose the port on which your app runs
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]