#!/usr/bin/env bash
# Every running program is a PROCESS with a numeric id (PID).

# `ps` lists processes. `ps -ef` shows every process, with its PID and the
# command that started it. We pipe through grep to find a name (next step!).
echo "Processes whose command mentions 'bash':"
ps -ef | grep bash

# Start a long-running program in the BACKGROUND with a trailing &,
# so the shell keeps our prompt instead of waiting for it to finish.
sleep 300 &
bg_pid=$!            # $! holds the PID of the most recent background job
echo "Started a background sleep with PID $bg_pid"

# `kill` sends a SIGNAL to a process by PID. The default signal asks it
# to terminate politely; we send it to clean up our sleep.
kill "$bg_pid"
echo "Asked PID $bg_pid to terminate"
