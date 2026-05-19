#!/bin/bash

echo "===Server Health check==="
echo ""

echo "Disk Space check"
df -h

echo ""

echo "RAM Usuage"
vm_stat

echo""

echo " CPU load time"
uptime

echo""