#!/bin/bash

bundle exec rails db:migrate 2>/dev/null || bundle exec rails db:create db:migrate
bundle exec rails server -b 0.0.0.0 -p 3000
