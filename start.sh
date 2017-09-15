#!/bin/bash

find /var/www/html/ext/ -mindepth 1 -maxdepth 1 -type l -delete
find /mnt/dev/ -maxdepth 1 -mindepth 1 -type d -exec ln -s -t /var/www/html/ext/ {} \;

# Passthrough to php:apache start
apache2-foreground
