#!/usr/bin/env bash
# Pull everything together: loop over log files given as arguments and
# summarize each one using the tools from earlier steps.

# Require at least one file argument; otherwise explain and FAIL (exit 1).
if [ "$#" -eq 0 ]; then
    echo "usage: logsum.sh <logfile> [more...]" >&2
    exit 1
fi

# Loop over EVERY argument. "$@" expands to all arguments, each kept whole.
for file in "$@"; do
    echo "== $file =="
    # Count errors with grep -c, and show severities with awk.
    errors=$(grep -c "ERROR" "$file")
    echo "  ERROR lines: $errors"
    echo "  severities seen:"
    awk '{ print $1 }' "$file" | sort | uniq -c
done
