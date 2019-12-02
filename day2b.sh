#!/bin/sh

for i in {0..99}; do
  for j in {0..99}; do
    output=$(./day2.awk -v noun=$i -v verb=$j day2input.txt)
    if [[ $output == "19690720" ]]; then
      echo $(($i*100+$j))
      exit
    fi
  done
done
