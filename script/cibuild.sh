#!/bin/sh

set -e
bundle install
jekyll build --trace
