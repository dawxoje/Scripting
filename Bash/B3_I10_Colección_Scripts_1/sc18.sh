#! /usr/bin/ksh

# Verificar el tipo de valor num�rico introducido

echo "Introduzca un n�mero: \c"
read num

case "$num" in

  ?(+)+([0-9]) ) 
    echo� "$num es un n�mero entero positivo"
    ;;

  -+([0-9]) ) 
    echo "$num es un n�mero entero negativo"
    ;;

  ?(+)+([0-9]).+([0-9]) ) 
	echo "$num es un n�mero real positivo"
	;;

  -+([0-9]).+([0-9]) ) 
	echo "$num es un n�mero real negativo"
	;;

  *) 
	echo "$num no es un n�mero"
	exit 1	# Error
	;;

esac
exit 0		# Correcto