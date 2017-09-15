#!/bin/bash

mkdir -p /var/www/html/ext/mafiascum/
find /var/www/html/ext/mafiascum/ -mindepth 1 -maxdepth 1 -type l -delete
# Check two layers down so that it works even when /mnt/dev doesn't exist
find /mnt/ -maxdepth 2 -mindepth 2 -type d -exec basename {} \; | xargs -I {} rm -rf /var/www/html/ext/mafiascum/{}
find /mnt/ -mindepth 2 -maxdepth 2 -type d -exec ln -s -t /var/www/html/ext/mafiascum/ {} \;

# Passthrough to php:apache start
apache2-foreground
