#! /bin/sh

if [ $# -eq 0 ] ; then
    echo "Opération manquante"
    exit
else
    if [ $# -eq 1 ] ; then
	echo "Opérande manquante"
	exit
    else
	res=$2
	echo -n $2
	case "$1" in
	    "add")
		shift 2
		while [ $# -ne 0 ] ; do
		    res=$(expr $res + $1)
		    echo -n " + $1"
		    shift
		done;;
	    "supp")
		shift 2
		while [ $# -ne 0 ] ; do
		    res=$(expr $res - $1)
		    echo -n " - $1"
		    shift
		done;;
	    "mult")
		shift 2
		while [ $# -ne 0 ] ; do
		    res=$(expr $res \* $1)
		    echo -n " * $1"
		    shift
		done;;
	    "div")
		shift 2
		while [ $# -ne 0 ] ; do
		    if [ $1 -eq 0 ] ; then
			echo " / 0 : Division par 0 interdite"
			exit
		    else
			res=$(expr $res / $1)
			echo -n " / $1"
			shift
		    fi
		done;;
	    *)
		echo " : Operation non traitée"
		exit
	esac
    fi
fi
echo " = $res"
    
