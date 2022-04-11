##!/bin/bash
read -p "Enter a password" pass
if test "$pass" = 22
then
     echo "Password verified."
else
     echo "Access denied."	
fi
