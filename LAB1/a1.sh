#!/bin/bash
# Display the parent process ID (PID)
echo "Parent Process ID: $$"
# Function to create a child process
create_child_process() {
echo "Starting Child Process..."
sleep 3 # Simulate some work
echo "Child Process ID: $PPID , Parent Process ID: $$"
}
# Create first child process
create_child_process &
# Create second child process
create_child_process &
# Wait for all child processes to complete
wait
# Display the parent process ID again after child processes complete
echo "All child processes have completed. Back to Parent Process ID: $$"
