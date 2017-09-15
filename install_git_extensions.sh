#!/bin/bash
mkdir -p /var/www/html/ext/mafiascum/
cd /var/www/html/ext/mafiascum/
cat /tmp/git_extensions | while read repo; do
  git clone --depth=1 --branch=master $repo
done
rm -rf /var/www/html/ext/mafiascum/*/.git
