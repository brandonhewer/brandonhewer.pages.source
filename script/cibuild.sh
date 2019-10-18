#!/bin/sh

set -e
jekyll build --trace
htmlproofer ./_site --disable-external