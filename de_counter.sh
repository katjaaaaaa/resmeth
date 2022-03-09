#!/bin/bash

# This script counts the amount of accurancies of an article "de" in a file

# First command line argument
TEXT=$1

# Check if the file is empty
if [ -z "$TEXT" ]
then
    echo "Error: the file is empty"
    exit
fi

less $TEXT | egrep -wi '[a-z][a-z]' | grep --color -wio 'de' | wc -l
