#! /usr/bin/ksh

# Verificar el tipo de valor numérico introducido

echo "Introduzca un número: \c"
read num

case "$num" in

  ?(+)+([0-9]) ) 
    echo  "$num es un número entero positivo"
    ;;

  -+([0-9]) ) 
    echo "$num es un número entero negativo"
    ;;

  ?(+)+([0-9]).+([0-9]) ) 
	echo "$num es un número real positivo"
	;;

  -+([0-9]).+([0-9]) ) 
	echo "$num es un número real negativo"
	;;

  *) 
	echo "$num no es un número"
	exit 1	# Error
	;;

esac
exit 0		# Correcto