#!/bin/sh
#Create directory if not exists
mkdir -p /tmp/log-activity

#Add a new line to the temporary log file
#Timestamp using date command
#Average Load provided in /proc/loadavg
#Available Memory provided by free command
#Top10 Process order by CPU usage provided by ps command

echo $(date "+%Y%m%dT%H%M%S")","$(cat /proc/loadavg | cut -d' ' -f1)","$(echo $(free -k) | cut -d' ' -f13)","$(ps axo comm --no-headers --sort=-pcpu | head -n 10 |tr '\n' ',') >> /tmp/log-activity/temp.log







