#!/bin/bash

set -x

bundle exec rake db:migrate
bundle exec rake ffcrm:setup:admin USERNAME=admin PASSWORD=admin EMAIL=admin@example.com

bundle exec unicorn -p $PORT -c ./config/unicorn.rb
