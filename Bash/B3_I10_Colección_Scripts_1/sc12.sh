#! /usr/bin/ksh

# versi�n del ejercicio anterior con opci�n x

set -x

echo "Nombre del archivo que se desea visualizar: \c"
read arch 
if [ -f arch ] ; then
  cat $arch
else
  echo "Archivo inexistente"
fi

