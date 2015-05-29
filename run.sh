for mass in 3 6 16
  do

    for f in ".prop.erb" ".ent.erb" "controller.rb"
      do
        printf "${f} \t ${mass}:\t" 
        find . -name *${f} | xargs flay -s -m $mass | head -n 1 | cut -c33-
      done

  done

