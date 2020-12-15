#!/bin/bash

calc()
{
	awk 'BEGIN {printf "%.2f\n", '"$*"'; exit}'
}

calc "sqrt(666)"
calc "102000 / 1024"
