#! /bin/sh

if [ $# -eq 0 ] ; then
    echo "Il n'y a pas d'arguments"
    exit
else
    res=$1
    echo -n $res
    shift
    while [ $# -ne 0 ] ; do
	if [ $# -ge 2 ] ; then
	    case $1 in
		+)
		    res=$(expr $res + $2)
		    echo -n " + $2";;
		-)
		    res=$(expr $res - $2)
		    echo -n " - $2";;
		x)
		    res=$(expr $res \* $2)
		    echo -n " x $2";;
		/)
		    if [ $2 -eq 0 ] ; then
			echo "  / 0 : Division par 0 interdite"
			exit
		    else
			res=$(expr $res / $2)
			echo -n " / $2"
		    fi;;
		*)
		    echo " $1 : Opération non définie"
		    exit
	    esac
	    shift 2
	else
	    echo " $1 : Opérande manquante"
	    exit
	fi
    done
fi
echo " = $res"
