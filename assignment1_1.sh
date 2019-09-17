#! /bin/sh

read -p "Enter the number of files you wish to create to desktop: " number
echo "Your number was: $number"

i=1
file_name=file

while [ $i -le $number ]
do
: > "$file_name$i".txt
echo $file_name$i
i=$((i + 1))
done



read -p "Enter the number of files you wish to create to directories: " number
echo "Your number was: $number"

i=1
number1=$((number/2))
file_name=file

mkdir first
mkdir second

while [ $i -le $number1 ]
do
touch first/"$file_name$i".txt
echo $file_name$i
i=$((i + 1))
done

i2=$((number1+1))

while [ $i2 -le $number ]
do
touch second/"$file_name$i2".txt
echo $file_name$i2
i2=$((i2 + 1))
done


echo "Creating file with permissions"

touch permission.txt
chmod g-w permission.txt
chmod g-x permission.txt
chmod o-w permission.txt
chmod o-x permission.txt




