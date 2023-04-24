echo "enter a number"
read n
if test $n -gt 5
then
  echo "entered number is greater than 5"

elif test $n -eq 5
then
  echo "entered number is equal to 5"

else
  echo "entered number is less than 5"
fi
