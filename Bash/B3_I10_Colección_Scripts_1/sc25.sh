#!/bin/bash

# Comprobación del número de argumentos
if [[ $# -ne 2 ]]
then
  echo "Uso: $0 directorio archivo"
  exit 1
fi

# El segundo argumento tiene que ser un directorio
if [[ ! -d $1 ]]
then
  echo "$1 no es un directorio"
  exit 2
fi

# Los argumentos son correctos
# Hasta que el archivo exista, el script duerme 2 segundos
until [[ -e $1/$2 ]]
do
  sleep 2
done

# Ha llegado el archivo
date=$(date '+%d%m%Y_%H%M')
mv $1/$2 $HOME/$2.$date

mail $LOGNAME <<FIN
Ha llegado el archivo $HOME/$2.$date.
FIN

echo "$0: Tiene correo pendiente"
exit 0
