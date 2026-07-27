#!/usr/bin/env bash
# Read and change who can do what to a file.

# `ls -l` shows a permissions string like: -rwxr-xr--
#   char 1     : type (- file, d directory, l symlink)
#   chars 2-4  : OWNER  can read/write/execute
#   chars 5-7  : GROUP  can read/write/execute
#   chars 8-10 : OTHER (everyone else) can read/write/execute
echo "Long listing of this script:"
ls -l toolkit/perms.sh

# `chmod` changes permission bits. The numeric form uses one digit per
# class, summing read=4 + write=2 + execute=1.
#   755 = owner rwx (7), group r-x (5), other r-x (5)
echo "Make a script runnable by its owner:"
chmod 755 toolkit/perms.sh

# `chown` changes the owner (and optionally group) of a file.
#   chown alice:devs file   ->  owner alice, group devs
echo "(chown needs privilege; shown for reference)"
