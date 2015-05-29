#!/bin/bash
# Usage: $0 <FILENAME


while read file  # For as many lines as the input file has ...
do
  echo "$file"   # Output the line itself.

  if [[ ${file} == *'show.html.erb' ]]
  then
    cat $file | head -n -3 | tail -n +3 > ${file}.prop.erb
    cat $file | head -n +2 > ${file}.ent.erb
    cat $file | tail -n 3 >> ${file}.ent.erb

  else 
    bash ./properties.sh $file > ${file}.prop.erb
    bash ./entities.sh $file > ${file}.ent.erb
  fi

  if [ ! -s ${file}.prop.erb ]
  then
    rm ${file}.prop.erb
  fi 


done

exit
