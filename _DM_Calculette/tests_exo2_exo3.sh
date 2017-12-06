#! /bin/sh

echo --------------------------------------------
echo "($1 )             renvoie :   $($1 )"
echo "($1 1)            renvoie :   $($1 1)"
echo "($1 coucou)       renvoie :   $($1 coucou)"
echo "($1 1 +)          renvoie :   $($1 1 +)"
echo "($1 1 zut)        renvoie :   $($1 1 zut)"

echo ------------OPERATIONS ELEMENTAIRES---------
echo "($1 1 + 1)        renvoie :   $($1 1 + 1)"
echo "($1 1 - 1)        renvoie :   $($1 1 - 1)"
echo "($1 2 x 3)        renvoie :   $($1 2 x 3)"
echo "($1 12 / 3)       renvoie :   $($1 12 / 3)"
echo "($1 1 / 0)        renvoie :   $($1 1 / 0)"

echo -----------OPERATIONS "+++++++++"-----------
echo "($1 1 + 2 + 3)    renvoie :   $($1 1 + 2 + 3)"
echo "($1 1 + 2 - 3)    renvoie :   $($1 1 + 2 - 3)"
echo "($1 1 + 2 x 3)    renvoie :   $($1 1 + 2 x 3)"
echo "($1 3 + 3 / 3)    renvoie :   $($1 3 + 3 / 3)"
echo "($1 1 + 2 / 3)    renvoie :   $($1 1 + 2 / 3)"
echo "($1 1 + 2 / 0)    renvoie :   $($1 1 + 2 / 0)"
echo "($1 1 + 2 / )     renvoie :   $($1 1 + 2 / )"
echo "($1 1 + 2 zut)    renvoie :   $($1 1 + 2 zut)"

echo -----------OPERATIONS "---------"-----------
echo "($1 1 - 2 + 3)    renvoie :   $($1 1 - 2 + 3)"
echo "($1 1 - 2 - 3)    renvoie :   $($1 1 - 2 - 3)"
echo "($1 1 - 2 x 3)    renvoie :   $($1 1 - 2 x 3)"
echo "($1 3 - 3 / 3)    renvoie :   $($1 3 - 3 / 3)"
echo "($1 1 - 2 / 3)    renvoie :   $($1 1 - 2 / 3)"
echo "($1 1 - 2 / 0)    renvoie :   $($1 1 - 2 / 0)"
echo "($1 1 - 2 / )     renvoie :   $($1 1 - 2 / )"
echo "($1 1 - 2 zut)    renvoie :   $($1 1 - 2 zut)"

