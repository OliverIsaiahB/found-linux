#!/usr/bin/env bash
# Small programs become powerful when you connect them together.

# Every program has three streams:
#   stdin  (0) input    stdout (1) normal output    stderr (2) errors

# A PIPE | sends one program's stdout into the next program's stdin.
# Here: list /etc, then count the lines of that list with wc -l.
echo "Number of entries in /etc:"
ls /etc | wc -l

# REDIRECT stdout to a file with >  (overwrite) or >> (append).
echo "first line"  >  toolkit/notes.txt   # creates/overwrites
echo "second line" >> toolkit/notes.txt   # appends

# REDIRECT a file INTO a program's stdin with < .
echo "Lines in notes.txt:"
wc -l < toolkit/notes.txt
