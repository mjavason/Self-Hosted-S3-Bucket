#!/bin/sh

minio server /data --console-address ":9090" &
PID=$!

sleep 5

mc alias set local http://127.0.0.1:9000 $MINIO_ROOT_USER $MINIO_ROOT_PASSWORD

mc mb --ignore-existing local/dev

mc anonymous set download local/dev

wait $PID