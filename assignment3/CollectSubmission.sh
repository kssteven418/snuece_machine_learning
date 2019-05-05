#!/bin/bash

if [ -z "$1" ]; then
    echo "student_id is required.
Usage: ./CollectSubmission student_id"
    exit 0
fi

files="Assignment_3-1.ipynb
Assignment_3-2.ipynb"

for file in $files
do
    if [ ! -f $file ]; then
        echo "Required $file not found."
        exit 0
    fi

done

rm -f $1.zip
zip -r $1.zip $files
