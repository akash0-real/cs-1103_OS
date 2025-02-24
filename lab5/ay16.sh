echo "Enter a choice (start/stop/exit):"
read choice
case $choice in
  start) echo "System starting...";;
  stop) echo "System stopping...";;
  exit) echo "Exiting...";;
  *) echo "Invalid option";;
esac

