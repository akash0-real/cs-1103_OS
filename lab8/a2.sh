#!/bin/bash
# Shell Script for Managing Environment Variables
# Usage: ./env_variables.sh
# Function to display current environment variables
display_environment_variables() {
echo "Current Environment Variables:"
printenv
echo ""
}
# Function to set and export a new environment variable
set_environment_variable() {
read -p "Enter the name of the environment variable: " var_name
read -p "Enter the value of the environment variable: " var_value
export "$var_name=$var_value"
echo "Environment variable '$var_name' set to '$var_value'."
echo ""
}
# Function to display all environment variables with env command
show_env_command() {
echo "Displaying environment variables using 'env':"
env
echo ""
}
# Main menu for user interaction
echo "Environment Variable Manager"
echo "1. Display current environment variables using printenv"
echo "2. Set and export a new environment variable"
echo "3. Display environment variables using env"
echo "4. Exit"
# Loop until the user chooses to exit
while true; do
read -p "Select an option (1-4): " option
case $option in
1) # Display current environment variables
display_environment_variables
;;
2) # Set and export a new environment variable
set_environment_variable
;;
3) # Show environment variables using env
show_env_command
;;
4) # Exit the script
echo "Exiting the Environment Variable Manager. Goodbye!"
exit 0
;;
*) # Invalid option
echo "Invalid option. Please select 1-4."
;;
esac
echo "" # Print a newline for better readability
done
