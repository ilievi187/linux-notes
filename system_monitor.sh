#!/bin/bash

echo "===== SYSTEM MONITOR ====="

echo "[1] Uptime"
uptime

echo ""
echo "[2] CPU Load"
cat /proc/loadavg

echo ""
echo "[3] Memory"
free -h

echo ""
echo "[4] Disk"
df -h

echo ""
echo "[5] Top processes"
ps aux --sort=-%cpu | head -n 10