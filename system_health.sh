#!/bin/bash

echo "=== SYSTEM HEALTH ==="
uptime
echo ""
free -h
echo ""
df -h
echo ""
top -b -n 1 | head -n 10