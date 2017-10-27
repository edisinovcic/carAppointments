#!bin/bash
rake db:test:prepare
bundle exec rspec
