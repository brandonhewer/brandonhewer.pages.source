#!/usr/bin/env bash
set -e # halt script on error

apt-get install -y pandoc
cd make4ht
make
make install
