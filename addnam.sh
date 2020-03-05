#!/bin/bash
if [ -f name ]
then
   echo "file exist"
else
   echo "file not exist"
fi
if [ "$#" -ne 2 ]
then
    echo "no of arguments incorrect"
else 
    if [ `grep -w -c $2 name` -gt 0 ]
    then
        echo "duplicate username detected"
    else 
        echo $2 >> name
        echo "username added successfully"
    fi
fi
