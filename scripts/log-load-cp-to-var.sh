#/bin/sh

#define some variables
CPDATE=$(date "+%Y%m%dT%H%M%S")

#Non volatile path for permanent storage of the data
DIR="/var/log/activityload"

#create directory if not exist
mkdir -p $DIR

#Copy and then remove temp data
cp /tmp/log-activity/temp.log $DIR/load_$CPDATE.log && rm /tmp/log-activity/temp.log

