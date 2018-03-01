#!/bin/bash
cd /var/www/html/styles/
echo "using branch ${BRANCH_NAME:-master}"
cat /tmp/git_styles | while read repo; do
  git clone --depth=1 --branch=${BRANCH_NAME:-master} $repo
done
rm -rf /var/www/html/styles/*/.git/
