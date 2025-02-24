factorial() {
  if [ $1 -le 1 ]; then
    echo 1
  else
    echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
  fi
}
echo "Enter a number:"
read num
echo "Factorial of $num is $(factorial $num)"
