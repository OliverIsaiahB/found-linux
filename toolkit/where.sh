#!/usr/bin/env bash
# A tiny tour of the filesystem tree and how we move around it.

# `pwd` = "print working directory": where am I right now?
echo "I am here:"
pwd

# Everything hangs off the single root directory, "/".
# An ABSOLUTE path starts at / and names the full route from the top.
echo "The root contains:"
ls /

# A RELATIVE path is read from the current directory.
#   .   means "here" (the current directory)
#   ..  means "the parent directory, one level up"
echo "My parent directory contains:"
ls ..
