#!/usr/bin/env bash
set -e # halt script on error

sudo apt-get install latexmk
sudo apt-get install pandoc
cd make4ht
make
make install
