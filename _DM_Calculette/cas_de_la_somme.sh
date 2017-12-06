#! /bin/sh

somme="res"
res=$2
echo -n "$2 "
if [  "$1" = "add" ] ; then
    shift 2
    while [ $# -ne 0 ] ; do
	res=$(expr $res + $1)
	echo -n "+ $1 "
	shift
    done
else
    echo "le premier argument n'est pas add"
    exit
fi
echo  = $res
