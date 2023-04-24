#this if statement shell script takes an user input and display "Number is less than 5" text if the input of the user is less than 5 and if the input number is more than 5 it display "Number is more than 5"

echo "enter a number"
read a
if test $a -le 5 #test command is used in conditional expression
then
echo "Number is less than 5"
else
echo "Number is more than 5"
fi
