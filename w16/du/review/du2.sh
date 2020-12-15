#!/bin/bash
cal()
{
	awk 'BEGIN {printf "%.2f\n", '"$*"'; exit}'
}

echo "------------------------------------"
echo " 		Summary of Disk Usages per User"
echo "------------------------------------"
printf "%-15s %-25s %s\n" userid homedir used
echo "------------------------------------"
IFS=:
cut -d: -f1,3,6 /etc/passwd > ~/tmppasswd

dush=`du -sh $1 2>/dev/null | cut -f1 `
dus=`du -s $1 2>/dev/null | cut -f1 `
printf "%-25s %8s\n" $homedir $dush
