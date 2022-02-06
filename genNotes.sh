#!/bin/bash
echo "Which week's log will you create?"

#read week
read week

mkdir "week${week}"

array=( Monday Tuesday Wednesday Thursday Friday Saturday Sunday )
for i in "${array[@]}"
do
    filename="${i}.txt"
    touch "week${week}/$filename"
    echo $i > "week${week}/$filename"
done
