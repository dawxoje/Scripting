#!/bin/bash

# Comprobaciónn del número de argumentos
# Se requieren al menos 2 argumentos
if [[ $# -lt 2 ]]
then
echo "Uso: $0 directorio archivo [ testigo ]"
exit 1
fi

# El segundo argumento tiene que ser un directorio
if [[ ! -d $1 ]]
then
  echo "$1 no es un directorio"
  exit 2
fi
 
# Nombre del archivo testigo por defecto: "testigo"
archTestigo=${3:-testigo}

# Los argumentos son correctos
# Hasta que el archivo exista, el script duerme 2 segundos
until [[ -e $1/$archTestigo ]]
do
  sleep 2
done

# Si el archivo testigo ha llegado, el archivo de datos tambiÃ©n
# Por seguridad, se comprueba
if [[ ! -e $1/$2 ]] ; then
echo "El archivo $archTestigo ha llegado pero el archivo de datos no existe"
exit 1
fi

# Tratamiento del archivo de datos
date=$(date '+%d%m%Y_%H%M')
mv $1/$2 $HOME/$2.$date

mail $LOGNAME <<FIN
Ha llegado el archivo $HOME/$2.$date.
FIN

echo "$0: Tiene correo pendiente"
exit 0
