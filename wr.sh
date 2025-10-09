#variables
param1="$1"
param2="$2"
param3="$3"
file_name="file"
file_ext=".txt"

# 1st parameter code
if [ -z "$1" ]
    then
        echo "Nothing was entered, exiting."
        exit 1
else
    echo "Text is $1"
fi

# # 2nd parameter code
if [ -z "$2" ];
    then
        echo "Nothing was entered"
        exit 1
fi

if [ -d "$2" ];
    then 
        echo "Directory exists, exiting..."
        exit 1
else
    mkdir -p "$2"
    echo "Folder $2 was created!"
fi

# 3rd parameter code
if [ -z "$param3" ];
    then
        echo "Nothing was entered"
        exit 1
fi

if !(( "$param3" >=2 && "$param3" <= 8 ));
    then 
        echo "$param3 is not between 2 and 8, exiting..."
        exit 1
    else
        echo "$param3 is between 2 and 8"
        for i in $( seq 1 $param3 )
        do 
            file_name+="$i"
            file_name+="$file_ext"
            #touch "$param2/$file_name"
            echo "$param1" > "$param2/$file_name"
            file_name="file"
        done
fi