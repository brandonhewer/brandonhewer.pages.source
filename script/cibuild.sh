#!/bin/sh

set -e
bundle install
sudo -u jekyll build --trace
