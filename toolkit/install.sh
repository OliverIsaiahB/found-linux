#!/usr/bin/env bash
# Installing software with a PACKAGE MANAGER instead of by hand.
# On Debian/Ubuntu that manager is `apt`. (Fedora uses dnf; Arch uses pacman.)

# A package manager fetches a program AND everything it depends on from a
# trusted repository, then installs it — no manual downloading or compiling.

# 1. Refresh the local list of what's available and at what version.
echo "Updating the package index (needs privilege):"
echo "  sudo apt update"

# 2. Install a package by name. `-y` answers 'yes' to the confirm prompt.
echo "Installing the 'tree' command:"
echo "  sudo apt install -y tree"

# After install, the program is just another command on your PATH:
echo "  tree toolkit/      # now visualizes our toolkit directory"
