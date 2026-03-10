#!/bin/bash
# Logging VM information on time spent running, memory, and free disk space.

LOGFILE="/home/developers/Lab_6_workspace/logs/system.log"

# Get amount of time spent running the VM
echo "=== UPTIME OF VM ===" >> $LOGFILE
uptime -p >> $LOGFILE

# Get memory info about the VM
echo "=== MEMORY INFORMATION ===" >> $LOGFILE
free -h | grep Mem >> $LOGFILE

# Get disk space info about the VM
echo "=== DISK SPACE INFO ===" >> $LOGFILE
df -h >> $LOGFILE
echo "" >> $LOGFILE
