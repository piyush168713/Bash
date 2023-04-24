echo "enter a number"
read n
sum=0
i=$n

while test $i -ne 0
do
rem=`expr $i % 10`
c=`expr $rem \* $rem \* $rem`
sum=`expr $sum + $c`
i=`expr $i / 10`
done

if test $sum -eq $n
then
echo "entered number is an armstrong number"
else
echo "entered number is not an armstrong number"
fi
