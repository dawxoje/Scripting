#! /usr/bin/ksh

# comprobar si el valor introducido es num�rico

echo "Introduzca un n�mero: \c"
read num

# Se comprueba si el n�mero se compone de un conjunto de cifras
# opcionalmente precedido de un s�mbolo + o - 

if [[ $num = ?([+-])+([0-9]) ]]
then
  echo "$num es un n�mero"
  exit 0
fi

echo "$num no es un n�mero"
exit 1