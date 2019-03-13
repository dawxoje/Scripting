#! /usr/bin/ksh

suma=0
echo "Introduzca un número por línea, ^d para mostrar la suma:"

while read num
do


  # La verificación siguiente no es compatible
  # con Bourne shell
  if [[ "$num" != ?([+-])+([0-9]) ]] 
  then
    echo "El valor introducido no es un número"
    continue
  fi
 
  # La sintaxis siguiente es equivalente a ((suma=suma+num)) 
  # y a ((suma=$suma+$num))
  # En Bourne Shell: suma=`expr $suma + $num`
  ((suma+=num))

done
echo "Suma: $suma"
exit 0 
