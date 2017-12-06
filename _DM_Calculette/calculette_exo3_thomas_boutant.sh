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
		x)
		    res=$(expr $res \* $2)
		    echo -n " x $2"
		    shift 2;;
		/)
		    if [ $2 -eq 0 ] ; then
			echo " / 0 : Division par 0 interdite!"
			exit
		    else
			res=$(expr $res / $2)
			echo -n " / $2"
			shift 2
		    fi;;
		+)
		    if [ $# -ge 3 ] ; then
			if [ "$3" = "+" ] || [ "$3" = "-" ] ; then
			    res=$(expr $res + $2)
			    echo -n " + $2"
			    shift 2
			elif [ "$3" = "x" ] || [ "$3" = "/" ] ; then
			    echo -n " + $2"
			    temp=$2
			    shift 2
			    while [ "$1" = "x" ] || [ "$1" = "/" ] ; do
				if [ $# -ge 2 ] ; then
				    if [ "$1" = "/" ] && [ $2 -eq 0 ] ; then
					echo " / 0 : Division par 0 non autorisée"
					exit
				    else
					case $1 in
					    x)
						temp=$(expr $temp \* $2)
						echo -n " x $2"
						shift 2;;
					    /)
						temp=$(expr $temp / $2)
						echo -n " / $2"
						shift 2;;
					esac
				    fi
				else
				    echo " $1 : Il manque un argument!"
				    exit
				fi
			    done
			    res=$(expr $res + $temp)
			else
			    echo " $1 : Opération non définie!"
			    exit
			fi
		    else
			res=$(expr $res + $2)
			echo -n " + $2"
			shift 2
		    fi;;
		-)
		    if [ $# -ge 3 ] ; then
			if [ "$3" = "+" ] || [ "$3" = "-" ] ; then
			    res=$(expr $res - $2)
			    echo -n " - $2"
			    shift 2
			elif [ "$3" = "x" ] || [ "$3" = "/" ] ; then
			    echo -n " - $2"
			    temp=$2
			    shift 2
			    while [ "$1" = "x" ] || [ "$1" = "/" ] ; do
				if [ $# -ge 2 ] ; then
				    if [ "$1" = "/" ] && [ $2 -eq 0 ] ; then
					echo " / 0 : Division par 0 non autorisée!!"
					exit
				    else
					case $1 in
					    x)
						temp=$(expr $temp \* $2)
						echo -n " x $2"
						shift 2;;
					    /)
						temp=$(expr $temp / $2)
						echo -n " / $2"
						shift 2;;
					esac
				    fi 
				else
				    echo " $1 : Il manque un argument!!!"
				    exit
				fi
			    done
			    res=$(expr $res - $temp)
			else
			    echo " $1 : Opération non définie."
			    exit
			fi
		    else
			res=$(expr $res - $2)
			echo -n " - $2"
			shift 2
		    fi;;
		*)
		    echo " $1 : L'opération n'est pas définie"
		    exit;;
	    esac
	else
	    echo " $1 : Il manque une opérande."
	    exit
	fi
    done
fi
echo " = $res"
