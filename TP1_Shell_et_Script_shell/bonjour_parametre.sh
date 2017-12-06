#! /bin/sh


if [ $# -eq 0 ] ; then
    echo "Bonjour tout le monde!"
else
    while [ $# -gt 1 ]; do
	echo "Bonjour $1 !"
	shift
	echo "Salut $1 !!"
	shift
	done
    if [ $# -eq 1 ]; then
	echo "Bonjour $1 ! "
    fi
fi
