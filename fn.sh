if [ -z "$1" ];
    then    
        echo "nothing was entered"
        exit 1
else
    result=$(( $1 + 3 )) #space senstive? Close spaces when assigning vars?
    echo "original number is: $1"
    echo "After adding 3, the result is: $result"
fi