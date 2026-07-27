#!/usr/bin/env bash
# grep keeps only the lines that match a pattern, dropping the rest.

# A tiny sample log we can search.
cat > toolkit/sample.log <<'EOF'
INFO  service started
WARN  disk almost full
ERROR database unreachable
INFO  request handled
ERROR timeout talking to cache
EOF

# Find error lines. -n adds the line number of each match.
echo "Errors (with line numbers):"
grep -n "ERROR" toolkit/sample.log

# -v INVERTS the match: keep lines that do NOT contain the pattern.
echo "Everything that is NOT an error:"
grep -v "ERROR" toolkit/sample.log

# grep also reads stdin, so it slots into a pipe.
echo "Count of INFO lines:"
grep -c "INFO" toolkit/sample.log
