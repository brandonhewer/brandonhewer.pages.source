#!/bin/sh

set -e
find ./_posts-tex -name "*.tex" -type f -exec make4ht -l -um publish {} "svg" \;