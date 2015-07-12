#/bin/bash

PROGRAMS=$@
SLEEP_DURATION=10

while true
do
    for i in ${PROGRAMS[@]}
    do
        if ! pgrep "$i" > /dev/null
        then
            echo "$i is not running...exiting"
            exit 1
        fi
    done
    sleep $SLEEP_DURATION
done