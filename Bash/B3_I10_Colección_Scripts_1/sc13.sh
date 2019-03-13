#! /usr/bin/ksh

# versión del script 11, con error. Falta una comilla

echo "Nombre del archivo que se desea visualizar: \c"
read arch 
if [ -f "$arch ] ; then			# Falta una comilla
  cat $arch
else
  echo "Archivo inexistente"
fi

