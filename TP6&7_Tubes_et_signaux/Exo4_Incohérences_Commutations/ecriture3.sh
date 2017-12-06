#! /bin/bash

echo $$ >> fic_PID
if [ $# -lt 1 ] ; then
  echo Il faut au moins un parametre
  exit 1
fi
for elem in "$@" ; do
  for proc in $(cat fic_PID) ; do  
    if [ $proc -ne $$ ] ; then
      kill -STOP $proc
    fi
  done
  if [ ! -e "$elem" ] ; then
    sleep 1
    echo premier $$ > "$elem"
  else
    echo suivant $$ >> "$elem"
  fi
  for proc in $(cat fic_PID) ; do  
    if [ $proc -ne $$ ] ; then
      kill -CONT $proc
    fi
  done
done
