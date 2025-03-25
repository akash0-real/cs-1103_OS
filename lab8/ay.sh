#!/bin/bash
# Shell Script for Piping Commands
# Usage: ./piping_commands.sh
# Function to display the contents of the current directory
list_directory_contents() {
echo "Listing contents of the current directory:"
ls -l
echo ""
}
# Function to filter and sort directory contents
filter_and_sort_contents() {
read -p "Enter a pattern to filter files (e.g., .txt for text files): " pattern
echo "Filtering and sorting files with pattern '$pattern'..."
# Use ls, grep, and sort in a pipeline
ls -l | grep "$pattern" | sort
echo ""
}
# Main menu for user interaction
echo "Piping Commands Manager"
echo "1. List contents of the current directory"
echo "2. Filter and sort directory contents"
echo "3. Exit"
# Loop until the user chooses to exit
while true; do
read -p "Select an option (1-3): " option
case $option in
1) # List directory contents
list_directory_contents
;;
2) # Filter and sort directory contents
filter_and_sort_contents
;;
3) # Exit the script
echo "Exiting the Piping Commands Manager. Goodbye!"
exit 0
;;
*) # Invalid option
echo "Invalid option. Please select 1-3."
;;
esac
echo "" # Print a newline for better readability
done
