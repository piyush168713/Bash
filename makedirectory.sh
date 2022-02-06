echo "enter dir name"
read n
if [ -d "$n" ] #-d option is used to check a particular directory exist or not
then
  echo "directory already exist"
else
  `mkdir $n`
fi
