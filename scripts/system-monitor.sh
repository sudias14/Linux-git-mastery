#!/bin/bash

echo "===== SYSTEM MONITOR ====="
echo "Username: $(whoami)"
echo "Date: $(date)"
echo "Kernel: $(uname -r)"

echo
echo "===== DISK USAGE ====="
df -h

echo
echo "===== MEMORY USAGE ====="
free -h
