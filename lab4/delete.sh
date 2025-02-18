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
delete)
# Delete a file
if [ -f "$source_file" ]; then
rm "$source_file"
if [ $? -eq 0 ]; then
echo "File '$source_file' deleted successfully."
else
echo "Error: Could not delete file '$source_file'."
fi
else
echo "Error: File '$source_file' does not exist."
fi
;;
*)
usage
;;
esac
