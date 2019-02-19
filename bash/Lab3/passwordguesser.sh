#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

referenceString="password"
maxGuess=3
counter=1

while [ $counter -le $maxGuess ]
do
  echo $counter
  ((counter++))
  read -p "What do you think the password is? " myString
  if [ $myString != $referenceString ]; then
    echo "You didn't guess the password"
  else
    echo "You guessed the password"
    counter=$(($maxGuess + 1))
  fi
done
#[ $myString = $referenceString ] && echo "You guessed the password!" || echo "The password eludes you..."
