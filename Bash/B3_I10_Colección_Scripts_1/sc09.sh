#! /usr/bin/ksh

# Verificación del número de argumentos
if [[ $# -ne 2 ]] ; then
  echo "Número de argumentos incorrecto"
  echo "Uso: $0 num1 num2"
  exit 1
fi

# Comparar num1 y num2 con expr
if expr $1 \> $2 > /dev/null
then
  echo "expr: $1 es mayor que $2"
fi

# La verificación también puede realizarse con [[ ]] (o [ ])
if [[ $1 -gt $2 ]] 
then
  echo "[[ ]]: $1 es mayor que $2"
fi
