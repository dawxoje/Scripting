#! /bin/bash

# $0->file name $1->Firts parameter $2->Second ...
echo $0 $1 $2 $3' > echo $0 $1 $2 $3'
# doubt with $@
arguments=("$@")
#$arguments[0]->$1

#echo ${arguments[0]} ${arguments[1]} ${arguments[2]}}
echo $@
# $#->Number of parameters
echo $#
