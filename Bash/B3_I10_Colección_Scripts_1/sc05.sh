# El script espera 2 argumentos.

# Argumento 1 – directorio
# Argumento 2 – Nombre de archivo

# Ejemplo: sc05.sh / passwd

# 'archresu' Variable local que contendrá el nombre de un archivo.
# El nombre del archivo estará formado por una cadena fija: 
# 'haencontrado.” + el valor de $$ ? Nº de PID del shell hijo
# que ejecutará el Script.

archresu=/tmp/haencontrado.$$


# El comando find busca los archivos que coincidan con $2 (nombre
# de archivo) en $1 (directorio indicado) y almacena el resultado
# en la variable local 'archresu'

find "$1" -name "$2" 2> /dev/null 1> $archresu 


# Muestra el nombre del archivo y su contenido

echo "Contenido del archivo $archresu: "
more $archresu
