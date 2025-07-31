#!/bin/sh

echo "Welcome to the PS5 Game Rental Service!"
echo "Type 'exit' at any time to quit."

while true; do
    echo
    printf "Enter your name: "
    if ! read name; then
        echo "Goodbye!"
        break
    fi

    if [ "$name" = "exit" ]; then
        echo "Goodbye!"
        break
    fi

    if [ -z "$name" ]; then
        echo "Error: You didn't enter a name. Please try again."
        continue
    fi

    printf "Hi %s! Which PS5 game would you like to rent? " "$name"
    if ! read game; then
        echo "Goodbye!"
        break
    fi

    if [ "$game" = "exit" ]; then
        echo "Goodbye!"
        break
    fi

    if [ -z "$game" ]; then
        echo "Error: You didn't enter a game title. Please try again."
        continue
    fi

    echo "Game '$game' has been successfully rented to $name."
    sleep 0.5
    printf "Enjoy your game!\n"
    echo "Logged to stderr (for system tracking)" 1>&2
done
