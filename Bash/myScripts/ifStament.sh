#! /bin/bash

#-eq->equals -ne->not equals -gt->greater than
#-lt->lower than -ge->greater or equals -le->lower or equal

# [condition]->tradicional [[condition]]->to regex
#((condition))->to performs arithmetic (condition)->subshells condition->basic

count=10;

if[$count -eq 10]
then
 echo"condition is true"
fi
