systemctl stop logload.timer
systemctl disable logload_cp.timer
systemctl disable logload.timer


#copy scripts to place
rm /usr/bin/log-load-to-tmp.sh
rm /usr/bin/log-load-cp-to-var.sh

#copy systemd units to place
rm /usr/lib/systemd/system/logload_cp.timer
rm /usr/lib/systemd/system/logload_cp.service
rm /usr/lib/systemd/system/logload.timer
rm /usr/lib/systemd/system/logload.service

#reload systemctl
systemctl daemon-reload

