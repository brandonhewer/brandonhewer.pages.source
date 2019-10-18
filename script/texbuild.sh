#!/bin/sh

set -e
tlmgr update --self
tlmgr install make4ht
tlmgr update --all
find ./_posts-tex -name "*.tex" -type f -exec make4ht -l -um publish {} "svg" \;
