#!/usr/bin/env bash
# sed edits a STREAM line by line; awk splits each line into FIELDS.

# Reuse the sample log from the search step.
# sed's s/old/new/ substitutes text. A trailing g replaces ALL matches
# on each line, not just the first.
echo "Rename ERROR to CRITICAL in the log:"
sed 's/ERROR/CRITICAL/g' toolkit/sample.log

# awk splits each line on whitespace into fields: $1 is the first word,
# $2 the second, and so on. $0 is the whole line.
echo "Just the severity (first field) of each line:"
awk '{ print $1 }' toolkit/sample.log

# awk can pair a PATTERN with an ACTION: run the action only on matching
# lines. Here: print the message (everything after field 1) of INFO lines.
echo "Messages of INFO lines only:"
awk '$1 == "INFO" { print $2, $3 }' toolkit/sample.log
