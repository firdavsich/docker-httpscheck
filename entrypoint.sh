#!/bin/sh

while sleep ${INTERVAL}
do
    CHK_TS=`date +"%Y-%m-%d_%H:%M:%S"`
    CHK_LOG=/tmp/https-check.${CHK_TS}.log
    curl --tcp-nodelay -sm ${TIMEOUT} -S $URL > $CHK_LOG 2>&1

    if [ "$?" != "0" ]
        then
            echo "==== FAIL ${CHK_TS} ===="
            cat $CHK_LOG
        fi
    rm -f $CHK_LOG
done
