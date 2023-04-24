echo "enter a number"
read n

i=1
f=1

while test $i -le $n
do
f=`expr $f \* $i`
i=`expr $i + 1`
done
echo "factorial is" $f
