#!/bin/sh


#Creo el directorio si no existe
mkdir -p /tmp/log-activity

#Add a new line to the temporary log file 
#Timestamp, Average Load, Available Memory follow by the Top10 Process order by CPU usage
echo $(date "+%Y%m%dT%H%M%S")","$(cat /proc/loadavg | cut -d' ' -f1)","$(echo $(free -k) | cut -d' ' -f13)","$(ps axo comm --no-headers --sort=-pcpu | head -n 10 |tr '\n' ',') >> /tmp/log-activity/temp.log







