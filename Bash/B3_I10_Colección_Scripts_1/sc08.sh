#! /usr/bin/ksh

# comprobar si el valor introducido es numérico

echo "Introduzca un número: \c"
read num

# Se comprueba si el número se compone de un conjunto de cifras
# opcionalmente precedido de un símbolo + o - 

if [[ $num = ?([+-])+([0-9]) ]]
then
  echo "$num es un número"
  exit 0
fi

echo "$num no es un número"
exit 1