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

# [[ "${PHPBB_INSTALL}" = "true" ]] && echo "" > config.php
# [[ "${PHPBB_INSTALL}" != "true" ]] && rm -rf install

db_wait() {
    retry_count=0
    retryMax=10
    retrySleep=3
    until [[ $retry_count -ge $retryMax ]]; do
        set +e
        nc -z ${DB_HOST} ${DB_PORT}
        success=$?
	set -e
        [[ $success == 0 ]] && break
	((retry_count  ++)) || true
        echo "$(date) - waiting for database on ${DB_HOST}:${DB_PORT} to start before applying migrations"
        sleep $retrySleep
    done

    if [[ $success != 0 ]]; then
	echo "failed to connect to database after $retryMax tries." >&2
        exit 1
    fi
}

install() {
    if [[ ! -f meta/config.php ]]; then
        echo "$(date) - installing phpbb"
        envsubst < /var/www/html/install/install-config.yml.template > /var/www/html/install/install-config.yml
        php install/phpbbcli.php install install/install-config.yml
        cp config.php meta/config.php
    fi
    rm -rf install
}

db_migrate() {
    echo "$(date) - applying migrations"
    cp meta/config.php config.php
    php bin/phpbbcli.php db:migrate
}


# Passthrough to php:apache start
db_wait && install && db_migrate && chown -R www-data:www-data /var/www/ && apache2-foreground
