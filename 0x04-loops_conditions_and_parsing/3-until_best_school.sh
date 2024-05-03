#!/usr/bin/env bash
# Using a until loop to display "Best School" 10 times

# Using a until loop to display "Best School" 10 times
i=0
until [ $i -gt 9 ]
do
    echo "Best School"
    # Increment the counter
    i=$((i + 1))
done