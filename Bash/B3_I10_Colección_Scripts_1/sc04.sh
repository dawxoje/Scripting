#! /bin/bash

# Gestión de 'decalado'
#
# Por defecto el valor por defecto del comando shift=1. 
# Esto indica que debe tomar los valores desde los argumentos
# empezando por el segundo (no considerando el primero).
# Si modificamos el valor de shift, indicaremos que realice un 
# 'decalado' hacia la izquierda de los argumentos.


# Mostrar las variables antes del decalado
echo "Antes de shift"
echo "1º argumento \$1: $1"
echo "2º argumento \$2: $2"
echo "3º argumento \$3: $3"
echo "4º argumento \$4: $4"
echo "Todos los argumentos \$*: $*"
echo -e "Número de argumentos \$#: $#\n"
# Guardar el primer argumento en la variable dir
dir=$1

# Decalado de 1 posición a la izquierda
shift

# Mostrar las variables después del decalado
echo -e "Después de shift\n"
echo "1º argumento \$1: $1"
echo "2º argumento \$2: $2"
echo "3º argumento \$3: $3"
echo "4º argumento \$4: $4"
echo "Todos los argumentos \$*: $*"
echo -e "Número de argumentos \$#: $#\n"

# Cambio de directorio
cd $dir

# Tratamiento de cada archivo contenido en $*
for arch in $*
do
	echo "Guardando $arch ..."
done
