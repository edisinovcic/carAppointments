#!/bin/bash
rails db:reset db:migrate
rails server