#!/bin/bash

sleep 30

crontab -l > /home/hick/configs/crontab.conf

DOTFILES_DIR="/home/hick/git/dotfiles"

cd "$DOTFILES_DIR"

# Wait for internet connectivity
echo "Waiting for internet..."
for i in $(seq 1 30); do
  ping -c 1 -W 2 8.8.8.8 &>/dev/null && break
  sleep 2
done

if ! ping -c 1 -W 2 8.8.8.8 &>/dev/null; then
  echo "No internet connection after 60s, aborting."
  exit 1
fi

dotdrop compare --profile=archlinux
COMPARE_STATUS=$?

if [ "$COMPARE_STATUS" -eq 0 ]; then
  echo "dotdrop compare exited with status $COMPARE_STATUS, nothing to update."
  exit 0
fi

set -e

dotdrop update -f --profile=archlinux

git add -A

git commit -m "update on boot: $(date -u +"%Y-%m-%d %H:%M:%S %Z")"

git push