#!/bin/bash
# build.sh - Render build script

# Install dependencies
bundle install

# Precompile assets
bundle exec rails assets:precompile

# Run database migrations
bundle exec rails db:migrate

# Seed the database if needed
bundle exec rails db:seed
