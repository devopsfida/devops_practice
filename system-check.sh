#!/bin/bash

# 1. VARIABLES (Defining what we want to check)
echo "--- Starting Advanced System Check ---"

# 2. CONDITIONAL LOGIC (If/Else)
# We check if the user running the script has 'root' (admin) privileges
if [ "$EUID" -eq 0 ]; then
  echo "✅ Warning: You are running this as root!"
else
  echo "ℹ️ Note: You are running as a standard user."
fi

echo "--- Checking Core Directories ---"

# 3. LOOPS (Iterating through a list)
# This loop checks 3 real Linux folders and 1 fake one
for FOLDER in /etc /var /tmp /fake_devops_folder; do
  
  # The '-d' flag specifically checks "Does this directory exist?"
  if [ -d "$FOLDER" ]; then
    echo "✅ Directory exists: $FOLDER"
  else
    echo "❌ ERROR: Directory missing: $FOLDER"
  fi
  
done

echo "--- Check Complete ---"