#! /usr/bin/ksh

# Testear el número de argumentos

if [ $# -ne 2 ]		# sería igual: test $# -ne 2
then
    echo "Uso: $0 arg1 arg2"
    exit 1			# Error
fi

echo "El número de argumentos es correcto"
exit 0				# Correcto