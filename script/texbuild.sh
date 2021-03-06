#!/bin/sh

set -e
wget https://github.com/htacg/tidy-html5/releases/download/5.4.0/tidy-5.4.0-64bit.deb
dpkg -i tidy-5.4.0-64bit.deb
rm tidy-5.4.0-64bit.deb
rm -v .wget-hsts
find ./_posts-tex -name "*.tex" -type f -exec make4ht -l -um publish {} "svg,imgdir:/assets/images/" \;
