#! /usr/bin/ksh

# PID del último proceso ejecutado en segundo plano

find / -name $1 1> /tmp/res 2> /dev/null &
date
echo "*****************************"
echo "Resultado del comando ps: "
ps
echo "*****************************"
echo "PID de find: $!"
exit 0
