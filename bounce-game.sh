#!/usr/bin/dash

pos=$(( $RANDOM % 10 + 1 ))
backwards=0

for i in {1..100}
do
   field="!          !"
   if test $pos = $(( ${#field} - 2 ))
   then
      backwards=1
   elif test $pos = 1
   then
      backwards=0
   fi
   echo "${field}" | sed s/./O/$(( $pos+1 ))
   if (( $backwards == 1 ))
   then
      pos=$(( $pos - 1 ))
   else
      pos=$(( $pos + 1 ))
   fi
done