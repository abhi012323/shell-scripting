#!/bin/bash
echo "=== Server Health Check ==="
echo ""

# Disk Check
echo "--- Disk Space ---"
df -h
echo ""

# Disk Warning
disk=$(df /System/Volumes/Data | awk 'NR==2 {print $5}' | tr -d '%')
if [ $disk -gt 80 ]; then
    echo "⚠️  WARNING: Disk $disk% full!"
else
    echo "✅ Disk OK: $disk% used"
fi
echo ""

# RAM Check
echo "--- RAM Usage ---"
vm_stat | grep "Pages free"
echo ""

# CPU Load
echo "--- CPU Load ---"
uptime
echo ""

# CPU Warning
load=$(uptime | awk '{print $NF}')
echo "Current Load: $load"