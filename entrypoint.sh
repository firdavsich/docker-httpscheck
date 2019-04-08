#!/bin/sh

while sleep ${INTERVAL}
do
curl -sH 'Cache-Control: no-cache' https://${HTTPS_HOST} > /dev/null || echo `date +"%Y-%m-%d %H:%M"` "HTTPS check Failure"
done