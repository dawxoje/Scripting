#! /usr/bin/ksh

echo "Lista de argumentos recibidos: \n$*"

for arch in $*    # Equivalente a "for arch" 
do
  if [[ -f "$arch" ]]
  then
    echo "$arch es un archivo regular"
  elif [[ -d "$arch" ]]
  then
    echo "$arch es un directorio"
  elif [[ -e "$arch" ]]
  then
    echo "$arch no es ni un archivo regular ni un directorio"
  else
    echo "$arch no existe"
  fi
done
