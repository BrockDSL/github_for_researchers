#!/bin/bash

echo "Part 2 of Workshop"

#clone from list antendees and switch to main branch
pull_list="list_of_clones.txt"
while IFS= read -r line;
do
  git clone $line
done < $pull_list


startdir=$(pwd)
#touch analysis.py in each directory to change values
for d in $(ls -d **/)
do
  cd $startdir"/"$d
  #modify each file
  sed -i '' 's/mean/median/g' analyze.py
  git commit -m "new average method"
done
