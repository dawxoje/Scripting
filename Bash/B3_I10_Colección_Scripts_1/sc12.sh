#! /usr/bin/ksh

# versión del ejercicio anterior con opción x

set -x

echo "Nombre del archivo que se desea visualizar: \c"
read arch 
if [ -f arch ] ; then
  cat $arch
else
  echo "Archivo inexistente"
fi

