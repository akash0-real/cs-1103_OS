cp "$1" "$2"
if [ $? -eq 0 ]; then
echo "File '$1' copied to '$2'
successfully."
else
echo "Error: Could not copy file '$1' to
'$2'."
fi

