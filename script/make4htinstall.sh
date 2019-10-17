#!/usr/bin/env bash
set -e # halt script on error

cd make4ht
make
make install
