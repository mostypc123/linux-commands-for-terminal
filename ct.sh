#!/bin/bash

# Check if the target host and command were provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 target_host command_to_execute"
  exit 1
fi

# Target host and command to execute
target_host="$1"
command_to_execute="$2"

# SSH connection as a superuser
ssh -t root@"$target_host" "$command_to_execute"
