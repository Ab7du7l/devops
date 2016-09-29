if [ -f "$1" ]

then 

       git add $1
       echo enter an argument to the filename
       read argument
       git commit -m "$2"


else
       echo file not found

fi 






