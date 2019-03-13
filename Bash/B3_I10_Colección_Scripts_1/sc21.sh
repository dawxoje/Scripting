#! /usr/bin/ksh

# Tratar usuarios contenidos en el archivo passwd, cuyo nombre = plantilla
# Empleando una secuencia de comandos

for user in `cut -d":" -f1 /etc/passwd | grep "^cuenta"`
do
  echo "Tratamiento del usuario: $user"
  # ...
done