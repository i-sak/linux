#!/bin/bash
dush=`du -sh $1 2>/dev/null | cut -f1 `
dus=`du -s $1 2>/dev/null | cut -f1 `
printf "%-25s %8s\n" $homedir $dush
