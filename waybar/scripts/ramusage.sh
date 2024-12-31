#!/bin/bash

# Fetch memory data from /proc/meminfo
mem_total=$(grep MemTotal /proc/meminfo | awk '{print $2}')
mem_available=$(grep MemAvailable /proc/meminfo | awk '{print $2}')

# Calculate used memory in mb
mem_used=$(( (mem_total - mem_available) / 1024 ))
mem_total_mb=$(( mem_total / 1024 ))

# Output JSON for Waybar
echo "𝗥𝗮𝗺: ${mem_used}mb/${mem_total_mb}mb"
