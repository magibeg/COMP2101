#!/bin/bash
# This script demonstrates testing variables

# Test if the USER variable exists
[ -v USER ] && echo "The variable SHELL exists"
# TASK 1: Add a command that prints out a labelled description of what is in the USER variable, but only if it is not empty
[ ! -z "$USER" ] && echo "The contents of the USER variable are $USER"
# TASK 2: Add a command that tells the user if the USER variable exists, but is empty
[ -z "$USER" ] && echo "The variable SHELL exists but is empty" || echo "The variable SHELL exists but is not empty"

# Tests for string data
a=1
b=01
[ $a = $b ] && echo "$a is alphanumerically equal to $b" || echo "$a is not alphanumerically equal to $b"
# TASK 3: Modify the command to use the != operator instead of the = operator, without breaking the logic of the command
[ $a != $b ] && echo "$a is not alphanumerically equal to $b" || echo "$a is alphanumerically equal to $b"
# TASK 4: Use the read command to ask the user running the script to give us strings to use for the tests
read -p "Give me two numbers separated by a space " num1 num2
[ $num1 = $num2 ] && echo "$num1 is alphanumerically equal to $num2" || echo "$num1 is not alphanumerically equal to $num2"
