#!/usr/bin/env bash
set -e # halt script on error

apt-get install latexmk
apt-get install pandoc
cd make4ht
make
make install