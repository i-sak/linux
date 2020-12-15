#!/bin/bash

echo "Positional parameter (script): $1"

test ()
{
	echo "Positional parameter (function) : $1"
	RETURN_VALUE=$?
	echo "The exit code: $RETURN_VALUE."
}
test other_param