#! /bin/bash

NUMBER = $1

if [NUMBER -gt 20]; then
    echo "given $NUMBER is greatger than 20"
elif [NUMBER -eq 20]; then 
    echo "given $NUMBER is equals ton 20"
else 
    echo "given $NUMBER is less ton 20"
fi