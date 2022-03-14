#!/bin/bash

# This script counts the amount of accurancies of an article "de" in a file

# First command line argument
FILE=$1

# Check if the argument contains a value
if [ -z "$FILE" ]
then
    echo "Error: please insert a file you want to work with"
    exit
else
    if [ -f "$FILE" ] # Check if the inserted file exists
    then
        less $FILE | egrep -wi '[a-z][a-z]' | grep -wio 'de' | wc -l
    else
        echo "Error: $FILE is not found in current directory"
        exit
    fi
fi
