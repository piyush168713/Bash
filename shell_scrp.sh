#! /bin/bash

# echo "Hello world"

# echo My shell name is $BASH
# echo My bash version is $BASH_VERSION
# echo My root directory is $HOME
# echo My current directory is $PWD

#name=Piyush
#echo My name is $name

# val10=20
# echo value = $val10

#echo Enter name : 
#read name
#echo Entered name is : $name


#read -p 'username: ' name
#read -sp 'Password: ' pass
#echo
#echo username: $name
#echo Password: $pass

#echo Enter names: 
#read -a names
#echo Names are: ${names[0]}, ${names[1]}, ${names[2]}

#echo Enter names
#read 
#echo $REPLY

# Passing Arguments

#mtd-1
#echo $1 $2 $3 '> echo $1 $2 $3'

#mtd-2
#args=("$@")
#echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
#echo $@
#echo Total no. of args: $#


# Conditional Statement - If-else etc

#count=10
#if [ $count -ne 9 ]
#then
#  echo Condition is true
#fi

#word=abc
#if [ $word == "abcd" ]
#then
#  echo Condition a is true
#elif [ $word == "abc" ]
#then
#  echo Condition b is true;
#else
#  echo Condition is false
#fi


# File test operators
#Check the file type
#echo -e "Enter file name: \c"
#read file_name
#
#if [ -r $file_name ]
#then
#  echo $file_name has read access
#else
#  echo $file_name has not read access
#fi
#
##
#
#if [ -w $file_name ]
#then
#  echo $file_name has write access
#else
#  echo $file_name has not write access
#fi
#
##
#
#if [ -x $file_name ]
#then
#  echo $file_name has execute permission
#else
#  echo $file_name has not read execute permission
#fi
#
##
#
#if [ -f $file_name ]
#then
#  echo $file_name is ordinary file
#else
#  echo $file_name is a special file
#fi
#
##
#
#if [ -d $file_name ]
#then
#  echo $file_name is a directory
#else
#  echo $file_name is not a directory
#fi
#
##
#
#if [ -s $file_name ]
#then
#  echo File size is not zero
#else
#  echo File size is zero
#fi
#
##
#
#if [ -e $file_name ]
#then
#  echo $file_name exits
#else
#  echo $file_name not exists
#fi
#
##



# Append output to the end of text file
#echo -e "Enter file name: \c"
#read file_name
#if [ -e $file_name ]
#then
#  if [ -w $file_name ]
#  then
#    echo Type some text using vim file_name and quit using esc, :wq
#    vim $file_name
#  else
#    echo The $file_name file do not have write permission.
#  fi
#else
#  echo $file_name file not exists
#fi


#Lec - 8/9
# Logical AND operator (-a flag is also used as AND && operator)
#(-o flag is also used as OR || operator)
#age=17
##if [[ $age -ge 18 && $age -lt 25 ]]
##if [ $age -ge 18 ] && [ $age -lt 25 ]
#if [ $age -ge 18 -a $age -lt 25 ]
#then
#  echo Eligible for exam
#else
#  echo not eligible
#fi



#Lec - 10
# Perform arithmetic operations on integers

#num1=20
#num2=10
#echo Sum is: $((num1+num2))
#echo Sum is: $(expr $num1 + $num2)
#
#echo $((num1-num2))
#echo $(expr $num1 - $num2)
#
#echo $((num1*num2))
#echo $(expr $num1 \* $num2)
#
#echo $((num1/num2))
#echo $((num1%num2))


# L-11
# Perform arithmetic operations on decimal numbers
#echo "20.5+5" | bc
#echo "20.5-5" | bc
#echo "20.5*5" | bc
#echo "scale=2;20.5/5" | bc
#echo "20.5%5" | bc
#
#echo using variable
#
#num1=20.5
#num2=5
#echo "$num1+$num2" | bc
#echo "$num1-$num2" | bc
#echo "$num1*$num2" | bc
#echo "scale=2;$num1/$num2" | bc
#echo "$num1%$num2" | bc
#echo "scale=2;sqrt($num2)" | bc
#echo "scale=2;sqrt($num2)" | bc -l
## -l flag is a math library
#echo "($num2^2)" | bc



# L-12
# The case Statement

#vehicle=$1
#
#case $vehicle in
#  "car" )
#  echo Rent of $vehicle is 100 Dollar ;;
#  "Van" )
#  echo Rent of $vehicle is 80 Dollar ;;
#  "bicycle" )
#  echo Rent of $vehicle is 5 Dollar ;;
#  "Truck" )
#  echo Rent of $vehicle is 150 Dollar ;;
#  * )
#    echo Unknown Vehicle ;;
#  esac

#echo -e "Enter some character: \c"
#read val
#
#case $val in
#  [a-z] )
#    echo User entered $val a-z ;;
#  [A-Z] )
#    echo User entered $val A-Z ;;
#  [0-9] )
#    echo User entered $val 0-9 ;;
#  ? )
#    echo User entered $val special character ;;
#  * )
#    echo Unknown input ;;
#  esac
# ? -> any single special character



# Array Variables L - 14
#arr=('ubuntu' 'kali' 'macos')
#echo ${arr[*]}
#echo ${arr[@]}
#echo ${arr[1]}
## size
#echo ${#arr[0]}
## indices
#echo ${!arr[@]}
#echo ${arr[@]/*[uuu]*/}
##Replacing char
#echo ${arr[@]//t/T}


# while loops
#n=1
#
#while [ $n -le 10 ]
#do
#  echo $n
##  n=$(( n+1 ))
#  (( n++ ))
#done

#while [ $n -le 10 ]
#do
#  echo $n
#  (( n++ ))
#  sleep 1
#done


# it opens termial a no. of time loop used
#while [ $n -le 3 ]
#do
#  echo $n
#  (( n++ ))
#  gnome-terminal &
#done



# l-17 Read a file content in Bash
#while read p
#do
#  echo $p
#done < shell_scrp.sh

#cat shell_scrp.sh | while read p
#do
#  echo $p
#done

#l-18 Until loop
#n=1
#until [ $n -gt 10 ]
#do
#  echo $n
#  (( n++ ))
#done



# for loop l-19

#for table in {2..10..3}
#do
#  echo $table
#done

#for (( i=0; i<=10; i++))
#do
#  echo $i
#done


#for item in "hello" "world"
#do
#  echo item= $item
#done

#arr=('kali' 'ubuntu' 'macOs')
#for i in ${arr[@]}
#do
#  echo $i
#done


#for arr in 'kali' 'ubuntu' 'macOS'
#do
#  echo arr: $arr
#done


#echo ${BASH_VERSION}


# l-20
#for command in ls pwd date
#do
#  echo ------$command-------
#  $command
#done

# list all directories in this path
#for item in *
#do
#  if [ -d $item ]
#  then
#    echo $item
#  fi
#done


# SELECT loop  l- 21
#select name in mark john tom chad
#do
#  echo "$name Selected"
#done


#select name in mark john tom chad
#do
#  case $name in
#  mark)
#    echo mark selected
#    ;;
#  john)
#    echo john selected
#    ;;
#  tom)
#    echo tom selected
#    ;;
#  chad)
#    echo chad selected
#    ;;
#  *)
#    echo invalid name
#  esac
#done



# break and continue l-22
#for (( i=0; i<=10; i++))
#do
#  if [ $i -ge 5 ]
#  then
#    break
#  fi
#  echo $i
#done

#for (( i=0; i<=10; i++))
#do
#  if [ $i -eq 5 -o $i -eq 7 ]
#  then
#    continue
#  fi
#  echo $i
#done

# functions l-23

#function  hello() {
#  echo Hello world
#}
#
#quit(){
#  exit
#}
#
#hello
#echo foo
#exit


#function  hello() {
#  echo $1 $2 $3
#}
#
#quit(){
#  exit
#}
#
#hello arg1 arg2 arg3
#echo foo
#exit


#function  arg_pass() {
#  name=$1
#  echo The name is $name
#}
#
#name=Arihant
#echo The name is $name :Before
#
#arg_pass Piyush
#
#echo The name is $name :After
#echo foo

## local variable

#function  arg_pass() {
#  local name=$1
#  echo The name is $name
#}
#
#name=Arihant
#echo The name is $name :Before
#
#arg_pass Piyush
#
#echo The name is $name :After
#echo foo


# function example l-25

#usage(){
#  echo You need to provide a argument.
#  echo usage: $0 file_name
#}
#
#is_file_exist(){
#  local file=$1
#  [ -e $file ] && return 0 || return 1
#}
#
#[ $# -eq 0 ] && usage
#
#if ( is_file_exist $1 )
#then
#  echo File found
#else
#   echo File not found
#fi


# readonly command l-26
#var=31
#readonly var
#var=51
#
#echo var=$var



#
#hello(){
#  echo Hello World
#}
#
## use -f flag for declare functions readonly
#readonly -f hello
#
#hello(){
#  echo Hello world again
#}
#
## to see which one is read only
#readonly -f



# Signals and traps l-27
# https://www.tutorialspoint.com/unix/unix-signals-traps.htm#
# for more see -
# kill -l
# man 7 signal


#echo pid is $$
#while (( count < 10 ))
#do
#  sleep 10
#  (( count++ ))
#  echo $count
#done
#exit 0

# signals
#0-Success
#2-SIGINT
#15-SIGTERM

#trap "echo Exit signal is detected" 2
#
## kill cannot be trapped coz it is an exception
##trap "echo Kill signal is detected" kill
#
#echo pid is $$
#while (( count < 10 ))
#do
#  sleep 10
#  (( count++ ))
#  echo $count
#done
#exit 0




file=/home/piyush/Desktop/opp.txt
trap "rm -f $file && echo File Deleted; exit" 0 2 15
echo pid is $$
while (( count < 10 ))
do
  sleep 10
  (( count++ ))
  echo $count
done
exit 0




