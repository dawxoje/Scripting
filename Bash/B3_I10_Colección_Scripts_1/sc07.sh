#! /usr/bin/ksh

# Testear el n�mero de argumentos

if [ $# -ne 2 ]		# ser�a igual: test $# -ne 2
then
    echo "Uso: $0 arg1 arg2"
    exit 1			# Error
fi

echo "El n�mero de argumentos es correcto"
exit 0				# Correcto