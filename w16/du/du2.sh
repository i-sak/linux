#!/bin/bash
calc()
{
	awk 'BEGIN {printf "%.2f\n", '"$*"'; exit}'
}

#set -x 	# trace on script excution
echo "--------------------------------------------------"
echo "		Summary of Disk Usages per User		"
echo "--------------------------------------------------"
printf "%-15s %-25s %s\n" userid homedir used
echo "--------------------------------------------------"
IFS=:
cut -d: -f1,3,6 /etc/passwd > ~/tmppasswd


