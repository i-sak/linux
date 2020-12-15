#!/bin/bash
echo "Positional parameter (script): $1"
test ()
{
	echo "Positional paramter (function): $@"
	RETURN_VALUE=$?
	echo "The exit code: $RETURN_VALUE."
}
test $1 Kim Hong Lee
