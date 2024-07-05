#!/usr/bin/bash

# Define output file
OUTPUT=~/output.txt

# Add header to the output file
echo "System Information Report" > $OUTPUT
echo "Generated on: $(date)" >> $OUTPUT
echo "" >> $OUTPUT
echo "#####################################################" >> $OUTPUT
echo "" >> $OUTPUT

# Section: Hostname and Uptime
echo "HOSTNAME AND UPTIME" >> $OUTPUT
echo "Hostname: $(hostname)" >> $OUTPUT
echo "Uptime: $(uptime -p)" >> $OUTPUT
echo "" >> $OUTPUT
echo "#####################################################" >> $OUTPUT
echo "" >> $OUTPUT

# Section: List block devices
echo "LIST BLOCK DEVICES" >> $OUTPUT
lsblk >> $OUTPUT
echo "" >> $OUTPUT
echo "#####################################################" >> $OUTPUT
echo "" >> $OUTPUT

# Section: Filesystem free space status
echo "FILESYSTEM FREE SPACE STATUS" >> $OUTPUT
df -h >> $OUTPUT
echo "" >> $OUTPUT
echo "#####################################################" >> $OUTPUT
echo "" >> $OUTPUT

# Section: CPU information
echo "CPU INFORMATION" >> $OUTPUT
lscpu >> $OUTPUT
echo "" >> $OUTPUT
echo "#####################################################" >> $OUTPUT
echo "" >> $OUTPUT

# Section: Memory usage
echo "MEMORY USAGE" >> $OUTPUT
free -h >> $OUTPUT
echo "" >> $OUTPUT
echo "#####################################################" >> $OUTPUT
echo "" >> $OUTPUT

# Section: Network information
echo "NETWORK INFORMATION" >> $OUTPUT
ip -br a >> $OUTPUT
echo "" >> $OUTPUT
echo "#####################################################" >> $OUTPUT
echo "" >> $OUTPUT

# Section: Top 5 processes by memory usage
echo "TOP 5 PROCESSES BY MEMORY USAGE" >> $OUTPUT
ps aux --sort=-%mem | head -n 6 >> $OUTPUT
echo "" >> $OUTPUT
echo "#####################################################" >> $OUTPUT
echo "" >> $OUTPUT

# Section: Last 5 system logins
echo "LAST 5 SYSTEM LOGINS" >> $OUTPUT
last -n 5 >> $OUTPUT
echo "" >> $OUTPUT
echo "#####################################################" >> $OUTPUT
echo "" >> $OUTPUT

# Section: Installed packages (only for Debian-based systems, uncomment if needed)
# echo "INSTALLED PACKAGES" >> $OUTPUT
# dpkg -l >> $OUTPUT
# echo "" >> $OUTPUT
# echo "#####################################################" >> $OUTPUT
# echo "" >> $OUTPUT

# Print completion message
echo "System information report generated successfully: $OUTPUT"
