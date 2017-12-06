#! /bin/bash

echo "Saisie d'un jour :"
read i
while [ $i -lt 1 ] || [ $i -gt 31 ]; do
    echo "La valeur doit etre comprise entre 1 et 31.
Veuillez la saisir à nouveau :"
    read i
done
echo "jour : $i"

trap "" SIGINT
echo "Saisie d'un mois :"
read i
while [ $i -lt 1 ] || [ $i -gt 12 ]; do
    echo "La valeur doit etre comprise entre 1 et 12.
Veuillez la saisir à nouveau :"
    read i
done
echo "mois : $i"
trap - SIGINT

echo "Saisie d'une année :"
read i
while [ $i -lt 1960 ] || [ $i -gt 1980 ]; do
    echo "La valeur doit etre comprise entre 1960 et 1980.
Veuillez la saisir à nouveau :"
    read i
done
echo "annee : $i"
