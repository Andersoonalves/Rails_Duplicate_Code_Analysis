#!/bin/bash
# Usage: $0 <FILENAME


#cat app/views/companies/_form.html.erb | sh ./separate.sh > app/views/companies/_form.html.erb.prop.erb

#find . -name *.prop.erb | xargs flay -s -m 6 

formField=0
i=1
file=$1
numberOfFields=-1

while read line  # For as many lines as the input file has ...
do
  
# _form.html.erb
  if [[ ${file} == *'_form.html.erb' ]]
  then
    if [[ $formField -eq 1 ]]
    then
    
      echo "$line"

      if [[ ${line} == *'</div>'* ]]
      then
        formField=0
      fi

    fi

    if [[ ${line} == *'class="field"'* ]] 
    then 
      formField=1
      echo "$line"
    fi
  fi

# index.html.erb
  if [[ ${file} == *'index.html.erb' ]]
  then
  
    if [[ $numberOfFields -eq -1 ]]
    then
      if [[ $i -gt 7 ]] #Separate THs
      then

        if [[ ${line} == *'<th colspan="3"></th>'* ]]
        then
          numberOfFields=$(( $i -8 ))
        else
          echo "$line"
        fi
      fi    

    else
      trLine=$((14 + $numberOfFields))
      if [[ ( $i -gt $trLine ) && ( $i -le $(($trLine + $numberOfFields)) )  ]] #Separate TDs
      then    
        echo "$line"
      fi
    fi
  fi

  ((i++))
done < $file

exit
