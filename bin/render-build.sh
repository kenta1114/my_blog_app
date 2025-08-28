#!/bin/bash
# build.sh - Render build script

set -o errexit

# Install dependencies
bundle install

# Precompile assets
bundle exec rails assets:precompile

# Run database migrations
bundle exec rails db:migrate

# Seed the database if needed (only if no posts exist)
bundle exec rails runner "Post.find_or_create_by(title: 'ブログを始めました') do |post|
  post.content = 'こんにちは！今日からブログを始めることにしました。\\n\\n日々の思ったことや学んだことを記録していく予定です。\\n\\nよろしくお願いします！'
end"
