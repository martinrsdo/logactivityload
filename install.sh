
#copy scripts to place
cp ./scripts/log-load-to-tmp.sh /usr/bin/log-load-to-tmp.sh
cp ./scripts/log-load-cp-to-var.sh /usr/bin/log-load-cp-to-var.sh

#make scripts executable
chmod a+x /usr/bin/log-load-to-tmp.sh
chmod a+x /usr/bin/log-load-cp-to-var.sh

#copy systemd units to place
cp ./units/* /usr/lib/systemd/system/

#reload systemctl
systemctl daemon-reload

#install systemd timers
systemctl enable logload_cp.timer
systemctl enable logload.timer

#restart timers
systemctl restart logload.timer
