#! /bin/bash

if [[ $# -ne 1 ]] ; then
  echo "Número de argumentos incorrecto"
  echo "Uso: $0 nombre_usuario"
exit 1
fi

if grep -q "^$1:" /etc/passwd
then
  echo "El usuario $1 existe en el sistema"
else
  echo "El usuario $1 no existe en el sistema"
fi

exit 0
