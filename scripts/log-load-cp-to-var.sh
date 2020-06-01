#/bin/sh

CPDATE=$(date "+%Y%m%dT%H%M%S")
DIR="/var/log/activityload"

mkdir -p $DIR
cp /tmp/log-activity/temp.log $DIR/load_$CPDATE.log && rm /tmp/log-activity/temp.log

