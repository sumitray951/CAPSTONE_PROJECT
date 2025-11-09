# Capstone_ProjectSivakumarpradhan

System Maintenance & Automation Scripts (Bash Utilities)

This repository provides a collection of Bash-based automation scripts designed to streamline routine system operations such as file backups, log monitoring, and system updates. The project helps users simplify administrative workflows by enabling one-click execution of essential maintenance tasks in Linux or WSL environments.

The suite is highly modular, fully command-line driven, and suitable for beginners, system administrators, and developers who want lightweight automation without depending on heavy tooling.

Key Features
1. Automated Backup System

The Backup.sh script creates timestamped compressed backups of a defined source directory.
It performs validation on the source path, generates .tar.gz archives, and ensures the backup folder exists before storing the files.

Validates source directory

Automatically creates a backup_YYYY-MM-DD_HH-MM-SS.tar.gz file

Uses tar for optimized compression

Designed for reuse inside other scripts

Reference: 

Backup

2. Log Monitoring & Error Detection

The log_monitor.sh script scans the system log (/var/log/syslog) and extracts occurrences of critical events such as errors, failures, and warnings.

Uses pattern-based filtering with grep

Saves results to alerts.log for later analysis

Supports quick diagnosis of WSL and Ubuntu issues

Helps identify kernel, ACPI, and snap-related errors

Reference:
Script: 

log_monitor


Sample log output: 

alerts

3. System Update & Cleanup Automation

The update_cleanup.sh script performs system updates and automated cleanup in one step.

Runs apt update and apt upgrade

Removes unused packages (autoremove, autoclean)

Ensures the system stays optimized and free from clutter

Reference: 

update_cleanup

4. Interactive Maintenance Menu

The maintenance.sh script provides a user-friendly, menu-driven interface that integrates all automation utilities.

Run backups

Perform updates and cleanup

Monitor logs

Exit menu loop safely

This script is designed as the main entry point for daily or weekly maintenance operations.

Reference: 

maintenance

File Structure
.
├── Backup.sh               # Automated backup utility
├── log_monitor.sh         # Log scanning & alert extraction
├── update_cleanup.sh      # Update & cleanup automation
├── maintenance.sh         # Menu-driven interface for all scripts
├── alerts.log             # Auto-generated log file (sample output)
└── backup_*.tar.gz        # Generated backup archives (example)

How to Use
1. Make scripts executable
chmod +x *.sh

2. Run the main maintenance suite
./maintenance.sh

3. Run scripts individually

Backup:

./Backup.sh


Monitor logs:

./log_monitor.sh


System update:

./update_cleanup.sh

Use Cases

Automated daily or weekly project backups

Lightweight DevOps-style maintenance workflows

System health monitoring in WSL2 or Ubuntu environments

Creating cron jobs for scheduled maintenance

Student and project environments needing fast reproducibility

Technologies Used

Bash Scripting

Linux/WSL file system

tar, grep, apt, and core GNU utilities

System logging (syslog)
