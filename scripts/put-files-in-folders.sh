#!/bin/bash

# Takes each file in CURRENT folder and 
# creates folder with same name as file then 
# moves file into folder of that name

for file in *; do
	if [[ -f "$file" ]]; then
		mkdir "${file%.*}"
		mv "$file" "${file%.*}"
	fi
done
