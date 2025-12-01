# Use the official Jekyll image as base
FROM bretfisher/jekyll-serve

# Set working directory
WORKDIR /srv/jekyll


# Copy Gemfile first
COPY Gemfile Gemfile.lock ./

# Copy Gemfile.lock if it exists, but we'll update it for Linux platform

