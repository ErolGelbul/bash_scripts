#!/bin/bash
echo "System Information:"
echo "-------------------"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime)"
echo "Free memory: $(free -h | grep Mem | awk '{print $4}')"
echo "Disk usage: $(df -h | grep /dev/root | awk '{print $5}')"
echo "CPU usage: $(top -bn1 | grep Cpu | awk '{print $2}')%"
echo "-------------------"
