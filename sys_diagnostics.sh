#!/bin/bash

LOGFILE="system_report_$(date +%Y-%m-%d_%H-%M-%S).log"

echo "==============================" | tee -a $LOGFILE
echo " SYSTEM DIAGNOSTICS REPORT    " | tee -a $LOGFILE
echo "==============================" | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

echo "===== TIME =====" | tee -a $LOGFILE
date | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

echo "===== UPTIME =====" | tee -a $LOGFILE
uptime | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

echo "===== CPU LOAD =====" | tee -a $LOGFILE
cat /proc/loadavg | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

echo "===== MEMORY =====" | tee -a $LOGFILE
free -h | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

echo "===== DISK USAGE =====" | tee -a $LOGFILE
df -h | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

echo "===== TOP PROCESSES =====" | tee -a $LOGFILE
ps aux --sort=-%cpu | head -n 10 | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

echo "===== NETWORK INTERFACES =====" | tee -a $LOGFILE
ip a | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

echo "===== ROUTES =====" | tee -a $LOGFILE
ip r | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

echo "===== OPEN PORTS =====" | tee -a $LOGFILE
ss -tulpn | head -n 20 | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

echo "===== CONNECTIVITY TEST =====" | tee -a $LOGFILE
ping -c 2 8.8.8.8 | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

echo "REPORT SAVED TO: $LOGFILE"