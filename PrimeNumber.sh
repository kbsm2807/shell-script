#!/bin/bash
echo "This script checks if a number is prime."
echo "Enter a number: " $number
if (( number <= 1 )); then
    echo "$number is not a prime number."
    exit 0
fi
for (( i=2; i*i<=number; i++ )); do
    if (( number % i == 0 )); then
        echo "$number is not a prime number."
        exit 0
    fi
done
echo "$number is a prime number."