#!/usr/bin/env sh
set -e
bundle install
cd char_counter
bundle exec rake
cd ..
cd tenis
bundle exec rake
cd ..
cd batalla_naval4
bundle exec rake

