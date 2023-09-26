#! usr/bin/env bash
# File: guessinggame.sh

function welcome {
        echo " Welcome my pretty. How many files do you think are contained in this directory?"
}

welcome

while true; do
        read -p "Please enter your guess now: " INPUT

        if [ "$(ls -a | wc -l)" = "$INPUT" ]; then
                echo "Congratulations! You deserve a treat."
                break
        elif [ "$(ls -a | wc -l)" -lt "$INPUT" ]; then
                echo "Too high. Try again frog breath"
                continue
        else [ "$INPUT" -gt "$(ls -a | wc -l)" ];
                echo "Too low. Try again toad breath"
                continue
        fi

done
