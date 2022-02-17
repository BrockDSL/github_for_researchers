#!/bin/bash

echo "Part 5 of Workshop - Demo of Actions"


startdir=$(pwd)
#touch analysis.py in each directory to change values
for d in $(ls -d **/)
do
  cd $startdir"/"$d
  #modify each file
  git pull
  echo '#Thanks for attending the workshop' >> analyze.py
  git commit -a -m "Final push"
  git push
done
