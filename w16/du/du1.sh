#!/bin/bash
dush=`du -sh $1 2>/dev/null | cut -f1 `
dus=`du -s $1 2>/dev/null | cut -f1 `
printf "%-25s %8s\n" $homedir $dush

calc()
{
	awk 'BEGIN {printf "%.2f\n", '"$*"'; exit}'
}

calc "sqrt(666)"
calc "102000|1024"

