#!/bin/bash
while true; do
echo "===== System Maintenance Suite ====="
echo "1. Run Backup"
echo "2. System Update & Cleanup"
echo "3. Monitor Logs"
echo "4. Exit"
read -p "Choose an option: " opt
case $opt in
1) ./Backup.sh ;;
2) ./update_cleanup.sh ;;
3) ./log_monitor.sh ;;
4) echo "Exiting..."; break ;;
*) echo "Invalid choice!" ;;
esac
done
