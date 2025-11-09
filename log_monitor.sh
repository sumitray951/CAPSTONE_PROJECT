#!/bin/bash
logfile="/var/log/syslog"
if [ ! -f "$logfile" ]; then
 echo " Log file not found: $logfile"
 exit 1
fi
echo "Checking logs for errors..."
grep -iE "error|fail|critical" "$logfile" > alerts.log
[ -s alerts.log ] && echo "Alerts found! Check alerts.log" || echo "No errors found."
