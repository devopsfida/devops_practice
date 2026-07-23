#!/bin/bash
#Updated to test SSH connection
# $1 represents the first word you type after the script name
TARGET_DIR=$1

# We use the -z flag to check if the string is empty (meaning the user forgot to type a folder)
if [ -z "$TARGET_DIR" ]; then
  echo "❌ Error: You must provide a directory to check!"
  echo "Usage: ./smart-check.sh /path/to/folder"
  exit 1
fi

echo "Scanning directory: $TARGET_DIR"
# The 'ls -lh' command lists all files in that directory with human-readable sizes
ls -lh $TARGET_DIR