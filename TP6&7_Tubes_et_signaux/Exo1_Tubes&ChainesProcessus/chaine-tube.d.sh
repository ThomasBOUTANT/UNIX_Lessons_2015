#! /bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 N"
    exit 1
fi

echo "Processus $$ démarre avec comme paramètres $@"

if [ "$1" -gt "1" ]; then
    mkfifo "tube-$$"
    $0 $(expr $1 - 1) "tube-$$"&
    read a < "tube-$$"
    if [ -z "$2" ]; then
	echo "Mon filleul a pour PID $a"
    else
	echo "$a" > "$2"
    fi
    
    rm "tube-$$"
elif [ -n "$2" ]; then
    echo "$$" > $2
fi
