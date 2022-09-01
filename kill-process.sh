  #!/bin/bash
  # Path: kill-process.sh
  # Author: Patricio Balboa
  # Powered by: CodePlus.cl

  # Description:
  # 
  # The script will search for the process name and kill it.

  # Kill all processes with the given name.
  #
  # Arguments:
  #   $1 - The name of the process to kill.
  #
  # Returns:
  #   0 - If the process was killed.
  #   1 - If the process was not killed.
  #
  # Example:
  #   kill-process.sh my-process
  #
  # Notes:
  #   - This script is insecure.

# Check if the first argument is empty.
if [ -z "$1" ]; then
  echo "Usage: $0 <process-name>"
  exit 1
fi

# Search for all the process given by the first argument with a while.
while true; do
  # Search for the process.
  pid=$(pgrep -f "$1")
  # Check if the process was found.
  if [ -z "$pid" ]; then
    # Process not found.
    break
  fi
  # Kill the process.
  kill "$pid"
done
 