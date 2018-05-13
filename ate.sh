#!/bin/bash

if [ -z "$1" ]; then
  echo "Takes a description of what you ate as an argument"
  exit 0
fi

# Create ~/ate.md if it doesn't exist
if [ ! -f $HOME/ate.md ]; then
  touch $HOME/ate.md
fi

entry="$(date +"%Y-%m-%d %r") | $*"

echo $entry
echo $entry >> $HOME/ate.md