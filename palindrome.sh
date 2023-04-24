echo "enter a number"
read n

rev=$(echo $n | rev)

if test $n -eq $rev
then
  echo "number is palindrome"
else
  echo "number is not palindrome"
fi
