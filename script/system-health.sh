#!/bin/bash

echo "================================"
echo "       SYSTEM HEALTH CHECK"
echo "================================"

echo "Date: $(date)"
echo "User: $(whoami)"
echo "Hostname: $(hostname)"

echo ""
echo "Checking disk space..."

disk_usage=$(df -P / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "Disk usage: ${disk_usage}%"

if [ "$disk_usage" -ge 80 ]; then
    echo "WARNING: Disk usage is high!"
else
    echo "OK: Disk usage is within the acceptable range."
fi

echo ""
echo "Checking memory usage..."

memory_usage=$(free | awk '/Mem:/ {printf "%.0f", ($3/$2)*100}')

echo "Memory usage: ${memory_usage}%"

if [ "$memory_usage" -ge 80 ]; then
    echo "WARNING: Memory usage is high!"
else
    echo "OK: Memory usage is within the acceptable range."
fi

free -h

echo ""
echo "Checking system uptime..."
uptime

echo ""
echo "Health check completed."
