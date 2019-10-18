#!/bin/sh

set -e
tlmgr update --self
tlmgr install luaxml
tlmgr install tex4ht
tlmgr install make4ht
tlmgr update --all
wget https://github.com/htacg/tidy-html5/releases/download/5.4.0/tidy-5.4.0-64bit.deb
dpkg -i tidy-5.4.0-64bit.deb
rm tidy-5.4.0-64bit.deb
find ./_posts-tex -name "*.tex" -type f -exec make4ht -l -um publish {} "svg" \;
