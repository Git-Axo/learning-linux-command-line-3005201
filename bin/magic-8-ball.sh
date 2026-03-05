#!/bin/bash
# A script that simulates a Magic 8-Ball using an array and randomness.

# Define the array of possible answers (choices are separated by spaces)
ANSWERS=(
"It is certain."
"Yes, definitely."
"Reply hazy, try again."
"Cannot predict now."
"Don't count on it."
"Outlook not so good."
"Very doubtful."
"Ask again later."
"Signs point to yes."
"Most likely."
"Yes."
"You may rely on it."
"As I see it, yes."
"Better not tell you now."
"Concentrate and ask again."
"My reply is no."
"My sources say no."
"Outlook good."
"Chances are high."
"Absolutely."
"Probably."
"Unlikely."
"Possibly."
"The odds are in your favor."
"Fate says yes."
"Fate says no."
"The future is unclear."
"Give it time."
"It seems promising."
"Not in this timeline."
)

echo "--- The Magic 8-Ball ---"
read -p "Ask the 8-Ball a question and press Enter: "

echo -n "Shaking the 8-Ball"
for i in {1..4}; do
    echo -n "."
    sleep 0.5
done
echo

NUM_ANSWERS=${#ANSWERS[@]}
RANDOM_INDEX=$(( RANDOM % NUM_ANSWERS ))

echo "8-BALL SAYS: ${ANSWERS[RANDOM_INDEX]}"
