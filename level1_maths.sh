#!/bin/bash
#loop for 1-10

for i in {1..10}
do
    # Check if remainder is 0
    if [ $((i % 2)) -eq 0 ]
    then
        echo "$i is Even"
    else
        echo "$i is Odd"
    fi
done
