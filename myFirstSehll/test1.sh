#!/bin/bash
for (( i = 1 ;i <= 8 ;i++  ))
do 
for (( j = 8 ;j >= $i ;j--  ))
do
echo -n " "
done
for (( k = 1 ;k <= $i ;k++  ))
do 
echo -n " *"
done
echo
done
