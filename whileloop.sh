#while loop example in shell script
#this script will print number 0 to 5

number=0

while [ $number -le 5 ] #-le(less than)
do
echo $number 
number=`expr $number + 1`
#`expr` command is used to evaluate a given expression
done