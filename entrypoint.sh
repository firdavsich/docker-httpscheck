#!/bin/sh

while sleep ${INTERVAL}
do
if curl -s https://${HTTPS_HOST} > /dev/null; then
    echo `date +"%Y-%m-%d %H:%M"` "HTTPS check Success"
else
    echo `date +"%Y-%m-%d %H:%M"` "HTTPS check Failure"
fi
done