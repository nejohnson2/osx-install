#!/bin/sh
msg "Time for a fresh start!"
msg "root permissions are required for a few commands, asking upfront"
sudo -v

# Keep-alive: update existing `sudo` time stamp until this script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

./preferences.sh
./applications.sh

