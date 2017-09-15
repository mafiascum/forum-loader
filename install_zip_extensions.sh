#!/bin/bash
cat /tmp/zip_extensions | while read url; do
  curl $url -o /tmp/extension.zip
  unzip /tmp/extension.zip -d /var/www/html/ext/
  rm /tmp/extension.zip
done
