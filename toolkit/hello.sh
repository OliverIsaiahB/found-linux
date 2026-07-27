#!/usr/bin/env bash
# Our very first script. The shell reads each line, splits it into a
# command and its arguments, and runs the command with those arguments.

# `echo` is a command. Everything after it on the line is its arguments.
echo "Hello from the shell"

# `whoami` takes no arguments and prints the current user's name.
whoami

# The shell finds a command by searching the directories in $PATH.
# `which` shows you exactly which file will run for a given command name.
which echo
