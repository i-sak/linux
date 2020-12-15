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

total=0

while read userid uid homedir
do
	if (( "$uid" < 1000 )); then
		continue
	fi
	dush=`du -sh $homedir 2>/dev/null | cut -f1 `
	dus=`du -s $homedir 2>/dev/null | cut -f1 `
	total=$(( $total + $dus ))
	printf "%-15s %-25s %8s\n" $userid $homedir $dush
done < ~/tmppasswd

echo "===================================="
totalg=$(( $total / 1024 / 1024 ))
totalm=$(( $total / 1024 ))
totalgb=$(calc "$total / (1024 * 1024)" )
printf "Total : %10dK %10dM %sG\n" $total $totalm $totalgb

