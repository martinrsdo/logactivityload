# Process and Load logger using systemd and shell scripting

_This is a tool that logs information for system load analisys.
It's made of 2 services:_

*_First service write every 10s a new line into /tmp/activity-load/temp.log, containing a timestamp, system load, available memory and top 10 process order by cpu usage_ 
*_Second service copy this file to a non volatile path place in /var/log/activityload every 10 minutes appending a timestamp to the filename and removing the temporal info in /tmp/_

_Each service consist of 2 units placed in /usr/lib/systemd/system/ (a .service and a .timer unit) and a corresponding executable script in /usr/bin/_

_Files created in the non volatile path have comma separated values for easy import and analisys, columns of these files are:_

1. _Timestamp for this row using ISO8601 format YYYYMMDDTHHMMSS_
2. _System load, the average for the last minute as provided in /proc/loadavg_
3. _Available memory as provided by the free command_
4. to 14. _Top 10 process order by CPU usage provided by ps command_

## Installation

_Clone and cd into the project folder and execute install.sh_

```
$ git clone https://github.com/martinrsdo/logactivityload.git
$ cd logactivityload

 and install using

$ sudo sh install.sh

 or just: 

$ ./install.sh 

 if you are already a user with privileges
``` 

_This will copy files in place and enable both services. if you want to remove just run uninstall.sh_
