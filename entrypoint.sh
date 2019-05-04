#!/bin/bash
set -e

# Remove server pid for consistent startup
if [ -f /tmp/pids/server.pid ]; then
  rm /tmp/pids/server.pid
fi

# Install gems
bundle install

# Migrate db
bundle exec rake db:migrate 2>/dev/null || bundle exec rake db:setup

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"