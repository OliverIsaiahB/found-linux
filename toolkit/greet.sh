#!/usr/bin/env bash
# A real script: it takes an argument, uses a variable, and branches.

# $1 is the FIRST argument passed to the script. $# is how many there are.
# We give name a default of "world" if no argument was supplied.
name="$1"
if [ "$#" -eq 0 ]; then
    name="world"
fi

# An if/then/else block. The [ ... ] is the `test` command; it returns
# success (0) or failure, and `if` branches on that.
if [ "$name" = "root" ]; then
    echo "Careful, $name — you have full privileges."
else
    echo "Hello, $name."
fi
