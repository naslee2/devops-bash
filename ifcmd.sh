if [ -z "$1" ];
    then    
        echo "nothing was entered"
        exit 1
    else
      if (( "$1 % 2" == 0 )) # math expression using ((...))
      then
	      echo "$1 is even"
      else
	      echo "$1 is Odd"
      fi 
fi
