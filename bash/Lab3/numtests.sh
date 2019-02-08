#!/bin/bash
# this script demonstrates doing numeric tests in bash

# TASK 1: Improve it by getting the user to give us the numbers to use in our tests
# TASK 2: Improve it by adding a test to tell the user if the numbers are even or odd
# TASK 3: Improve it by adding a test to tell the user is the second number is a multiple of the first number

read -p "Give me two numbers separated by a space " firstNumber secondNumber

[ $(($firstNumber%2)) -eq 0 ] && echo "$firstNumber is an even number" || echo "$firstNumber is an odd number"
[ $(($secondNumber%2)) -eq 0 ] && echo "$secondNumber is an even number" || echo "$secondNumber is an odd number"
[ $firstNumber -eq $secondNumber ] && echo "The two numbers are the same"
[ $firstNumber -ne $secondNumber ] && echo "The two numbers are not the same"
[ $firstNumber -lt $secondNumber ] && echo "The first number is less than the second number"
[ $firstNumber -gt $secondNumber ] && echo "The first number is greater than the second number"
[ $firstNumber -le $secondNumber ] && echo "The first number is less than or equal to the second number"
[ $firstNumber -ge $secondNumber ] && echo "The first number is greater than or equal to the second number"
[ $(($firstNumber%$secondNumber)) -eq 0 ] && echo "The second number is a multiple of the first number" || echo "The second number is not a multiple of the first number"
