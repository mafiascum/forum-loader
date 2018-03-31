db_wait() {
    retry_count=0
    retryMax=10
    retrySleep=3
    until [[ $retry_count -ge $retryMax ]]; do
        set +e
        nc -z ${DB_SERVER} ${DB_PORT}
        success=$?
	set -e
        [[ $success == 0 ]] && break
	((retry_count  ++)) || true
        echo "$(date) - waiting for database on ${DB_SERVER}:${DB_PORT} to start before restore"
        sleep $retrySleep
    done

    if [[ $success != 0 ]]; then
	echo "failed to connect to database after $retryMax tries." >&2
        exit 1
    fi
}

db_wait