#! /usr/bin/ksh

while :
do

  echo "- 1 - Copia de seguridad "
  echo "- 2 - Restaurar "
  echo "- 3 - Fin"

  read respuesta
  echo "Su elección: "
  # read respuesta?"Su elección: " # Sintáxis ksh

  case "$respuesta" in
	1) echo "Su elección ha sido copia de seguridad <Confirmar>\c"
	 # Ejecución de la copia de seguridad
	 read x
	 ;;
	2) echo "Su elección ha sido restaurar <Confirmar>\c" 
	 # Ejecución de la restauración
	 read x
	 ;;
	3) echo "Fin del tratamiento"
	 echo "Hasta luego ..."
	 exit 0
	 ;;
	*) echo "Entrada incorrecta <Confirmar>\c"
	 read x
	 ;;
  esac
done
