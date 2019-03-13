#! /usr/bin/ksh
suma=0

# Bucle infinito
while true
do
  echo "Introduzca un número: \c"

  # Entrada de un número
  if read num
  then
    # Si la entrada es incorrecta, se sube a la condición del bucle de nuevo
    if [[ "$num" != ?([+-])+([0-9]) ]] 
    then
      echo "El valor introducido no es un número"
      continue
    fi

    # La entrada es correcta, se realiza la suma
    suma=`expr $suma + $num` 
  else
    # El usuario ha introducido ^d: Salida del bucle
    break
  fi
done

# Impresión del resultado
echo "\nLa suma es: $suma\c"
exit 0
