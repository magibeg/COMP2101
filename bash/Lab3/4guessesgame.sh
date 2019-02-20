#!/bin/bash
#
# This script implements a guessing game
# it will pick a secret number from 1 to 10
# it will then repeatedly ask the user to guess the number
#    until the user gets it right

# Give the user instructions for the game
cat <<EOF
Let's play a game.
I will pick a secret number from 1 to 10 and you have to guess it.
If you get it right, you get a virtual prize.
Here we go!

EOF

# Pick the secret number and set their default guess to be a wrong answer
secretnumber=$(($RANDOM % 10 +1)) # save our secret number to compare later
userguess=0
counter=0
maxGuesses=4
# This loop repeatedly asks the user to guess and tells them if they got the right answer
# TASK 1: Test the user input to make sure it is not blank
# TASK 2: Test the user input to make sure it is a number from 1 to 10 inclusive
# TASK 3: Give them better feedback, telling them if their guess is too low, or too high

for counter in {1..4}; do
  read -p "Give me a number from 1 to 10: " userguess # ask for a guess
  while [ -z "$userguess" ]; do #&& [ "$userguess" -eq "$userguess" ]; then
    echo "Your guess was empty"
    ((counter++))
    if [ $counter -lt $maxGuesses ]; then
    read -p "Give me a number from 1 to 10: " userguess # ask for a guess
  else
    echo "Out of guesses"
    exit
  fi
  done
  if [ "$userguess" -eq "$userguess" ]; then
    if [ $userguess -eq $secretnumber ]; then
      echo "You got it! Have a milkdud."
      exit
    elif [ $userguess -gt $secretnumber ]; then
      echo "Your guess was too high"
    elif [ $userguess -lt $secretnumber ]; then
      echo "Your guess was too low"
    fi
  else
    echo "Your guess is not a number"
  fi

done
