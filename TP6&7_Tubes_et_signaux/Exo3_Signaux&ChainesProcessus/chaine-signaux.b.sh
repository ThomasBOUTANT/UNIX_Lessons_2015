#!/bin/bash

set -m

if [ -z "$1" ]; then
    echo "Usage: $0 N"
    exit 1
fi

echo "[$$] démarre avec comme paramètres $@"

if [ -z "$2" ]; then
    trap 'echo "[$$] Morituri te salutant"; exit 0;' INT
else
    trap 'echo "[$$] transmet le signal"; kill -INT $2; exit 0;' INT
fi

if [ "$1" -gt "1" ]; then
    $0 $(expr $1 - 1) $$ &
    while true; do
        sleep 1;
    done
elif [ -n "$2" ]; then
    echo "[$$] envoie le signal de fin"
    kill -INT $2
fi
