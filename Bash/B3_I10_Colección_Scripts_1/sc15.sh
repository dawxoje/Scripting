#! /usr/bin/ksh


echo "Introduzca un código postal: \c"
read cp
if [[ $cp = 280@([0-4][0-9]|5[0-4]) ]] 
then
  echo "$cp es un código postal de Madrid"
elif [[ $cp = 28@([0-9][0-9][0-9]) ]] 
then
  echo "$cp es un código postal de la provincia de Madrid"
elif [[ $cp = @(@([0-4][0-9]|5[0-2])[0-9][0-9][0-9]) ]]
then
  echo "$cp es un código postal de España"
else
  echo "$cp no es un código postal de España"
fi
