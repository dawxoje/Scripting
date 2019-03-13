#! /bin/bash

# Gesti�n de 'decalado'
#
# Por defecto el valor por defecto del comando shift=1. 
# Esto indica que debe tomar los valores desde los argumentos
# empezando por el segundo (no considerando el primero).
# Si modificamos el valor de shift, indicaremos que realice un 
# 'decalado' hacia la izquierda de los argumentos.


# Mostrar las variables antes del decalado
echo "Antes de shift"
echo "1� argumento \$1: $1"
echo "2� argumento \$2: $2"
echo "3� argumento \$3: $3"
echo "4� argumento \$4: $4"
echo "Todos los argumentos \$*: $*"
echo -e "N�mero de argumentos \$#: $#\n"
# Guardar el primer argumento en la variable dir
dir=$1

# Decalado de 1 posici�n a la izquierda
shift

# Mostrar las variables despu�s del decalado
echo -e "Despu�s de shift\n"
echo "1� argumento \$1: $1"
echo "2� argumento \$2: $2"
echo "3� argumento \$3: $3"
echo "4� argumento \$4: $4"
echo "Todos los argumentos \$*: $*"
echo -e "N�mero de argumentos \$#: $#\n"

# Cambio de directorio
cd $dir

# Tratamiento de cada archivo contenido en $*
for arch in $*
do
	echo "Guardando $arch ..."
done
