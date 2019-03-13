#! /usr/bin/sh

echo "Nombre del archivo que se desea visualizar: \c"
read arch 
echo $arch
if [ -f arch ] ; then
  cat $arch
else
  echo "Archivo inexistente"
fi

