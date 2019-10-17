#!/usr/bin/env bash
set -e # halt script on error

find _posts-tex/ -name "*.tex" -type f -exec make4ht -um publish {} "svg" \;
