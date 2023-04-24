echo "enter numbers to print in reverse order"
read n

i=0
rev=0

while test $n -gt 0
do
i=`expr $n % 10`
rev=`expr $rev \* 10 + $i`
n=`expr $n / 10`
done
echo "if we reverse this number we will get" $rev
