if [[ -n "$DB_DUMP_DEBUG" ]]; then
  set -x
fi

if [ -e ${DUMPFILE} ];
then
  new_name=db_backup_latest.gz
  old_name=$(basename ${DUMPFILE})
  echo "copy backup file from ${old_name} to ${new_name} in S3"
  aws s3 cp ${DUMPFILE} "${DB_DUMP_TARGET}/${new_name}"
else
  echo "ERROR: Backup file ${DUMPFILE} does not exist!"
fi