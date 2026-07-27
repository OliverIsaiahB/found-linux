# toolkit/

A small set of shell scripts built up while learning Linux fundamentals.
Each script demonstrates one core idea and is meant to be read as much as run.

## Scripts
- `hello.sh`     — the shell: commands, arguments, the shebang
- `where.sh`     — filesystem tree, absolute vs relative paths
- `perms.sh`     — permissions (rwx) and ownership (chmod/chown)
- `procs.sh`     — processes, PIDs, background jobs, and signals
- `compose.sh`   — pipes and input/output redirection
- `search.sh`    — searching text with grep
- `transform.sh` — transforming text with sed and awk
- `greet.sh`     — variables, arguments, and if/else
- `logsum.sh`    — a real tool: loop over logs and summarize them
- `install.sh`   — installing software with a package manager

## Usage
Make a script executable, then run it:

    chmod +x toolkit/logsum.sh
    ./toolkit/logsum.sh toolkit/sample.log
