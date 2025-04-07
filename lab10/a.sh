#!/bin/bash
# Shell Script for Handling File Descriptors
# Usage: ./file_descriptors.sh
# Define output and error files
OUTPUT_FILE="output.txt"
ERROR_FILE="error.txt"
# Function to create files and demonstrate redirection
redirect_output() {
echo "Demonstrating standard output and error redirection."
# Clear previous output files
> "$OUTPUT_FILE"
> "$ERROR_FILE"
# Generate output and error
echo "This is a standard output message." > "$OUTPUT_FILE"
echo "This is a standard error message." 1>&2 > "$ERROR_FILE"
# Simulating a command that generates an error
echo "Trying to list a non-existent directory:" >> "$OUTPUT_FILE"
ls /non_existent_directory >> "$OUTPUT_FILE" 2>> "$ERROR_FILE"
}
# Function to display the contents of output and error files
display_results() {
echo ""
echo "Contents of $OUTPUT_FILE:"
cat "$OUTPUT_FILE"
echo ""
echo "Contents of $ERROR_FILE:"
cat "$ERROR_FILE"
echo ""
}
# Main execution
redirect_output
display_results
