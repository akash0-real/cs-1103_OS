#!/bin/bash
# Basic Shell Script for File Operations
# Usage: ./file_operations.sh <operation> <source_file> [destination_file]
# Function to display usage information
usage() {
echo "Usage: $0 {create|copy|move|delete} <source_file> [destination_file]"
exit 1
}
# Check if at least two arguments are provided
if [ "$#" -lt 2 ]; then
usage
fi
operation=$1
source_file=$2
destination_file=$3
case "$operation" in
copy)
# Copy a file
if [ -f "$source_file" ]; then
cp "$source_file" "$destination_file"
if [ $? -eq 0 ]; then
echo "File '$source_file' copied to '$destination_file'
successfully."
else
echo "Error: Could not copy file '$source_file' to
'$destination_file'."
fi
else
echo "Error: Source file '$source_file' does not exist."
fi
;;
*)
usage
;;
esac
