#!/bin/bash

mkdir -p /var/www/html/ext/mafiascum/
find /var/www/html/ext/mafiascum/ -mindepth 1 -maxdepth 1 -type l -delete
# Check two layers down so that it works even when /mnt/dev doesn't exist
find /mnt/ -maxdepth 2 -mindepth 2 -type d -exec basename {} \; | xargs -I {} rm -rf /var/www/html/ext/mafiascum/{}
find /mnt/ -mindepth 2 -maxdepth 2 -type d -exec ln -s -t /var/www/html/ext/mafiascum/ {} \;

find /var/www/html/styles/ -mindepth 1 -maxdepth 1 -type l -delete
# Check two layers down so that it works even when /opt/dev-styles doesn't exist
# /opt/ is used so the extensions and styles don't conflict
find /opt/ -maxdepth 2 -mindepth 2 -type d -exec basename {} \; | xargs -I {} rm -rf /var/www/html/styles/{}
find /opt/ -mindepth 2 -maxdepth 2 -type d -exec ln -s -t /var/www/html/styles/ {} \;

[[ "${PHPBB_INSTALL}" = "true" ]] && echo "" > config.php
[[ "${PHPBB_INSTALL}" != "true" ]] && rm -rf install

db_wait() {
    until nc -z ${DB_HOST} ${DB_PORT}; do
        echo "$(date) - waiting for database on ${DB_HOST}:${DB_PORT} to start before applying migrations"
        sleep 3
    done
}

db_migrate() {
    if [[ "${PHPBB_INSTALL}" != "true" ]]; then
        echo "$(date) - applying migrations"
        php bin/phpbbcli.php db:migrate
    fi
}


# Passthrough to php:apache start
db_wait && db_migrate && chown -R www-data:www-data /var/www/ && apache2-foreground
