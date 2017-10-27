#!/bin/bash
bundle exec rake db:schema:dump
rake db:drop
rake db:create
./start_script.sh
