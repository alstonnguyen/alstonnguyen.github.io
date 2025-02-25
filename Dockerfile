# Base image: Ruby 3.2 with necessary dependencies
FROM ruby:3.2

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /srv/jekyll

# Copy Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install a specific Bundler version and the gem dependencies
RUN gem install bundler:2.3.26 && bundle install

# Copy the rest of your Jekyll site (including _config.yml and _config_docker.yml)
COPY . /srv/jekyll

# Expose Jekyll's default port (optional, if you need it)
EXPOSE 4000

# Command to serve the Jekyll site with multiple configuration files
CMD ["jekyll", "serve", "-H", "0.0.0.0", "-w", "--config", "_config.yml,_config_docker.yml"]
