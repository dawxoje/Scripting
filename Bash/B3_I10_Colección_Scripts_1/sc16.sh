#! /usr/bin/sh
       
       
echo "Introduzca un código postal: \c"
read cp
       
case  "$cp" in
       
   280[0-4][0-9] | 2805[0-4] ) 
    echo "$cp es un código postal de Madrid" 
    ;;
       
  28[0-9][0-9][0-9] ) 
    echo "$cp es un código postal de la provincia de Madrid"
    ;;
       
  [0-4][0-9][0-9][0-9][0-9] | 5[0-2][0-9][0-9][0-9] ) 
    echo "$cp es un código postal de España"
    ;;
  *)
    echo "$cp no es un código postal de España"
    ;;
esac
