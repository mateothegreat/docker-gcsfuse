#!/bin/sh
mkdir -p $STORAGE_BUCKET_MOUNT_PATH

gcsfuse --key-file $GOOGLE_KEY_PATH -o nonempty $STORAGE_BUCKET_NAME $STORAGE_BUCKET_MOUNT_PATH

/bin/sh -c "$@"
