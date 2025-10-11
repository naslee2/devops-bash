echo "Enter Folder Name:"
read input

dir=$(pwd)

if [ -z "$input" ]
    then
        echo "Nothing was entered"
else
    data1="/"
    result="$dir"
    result+="$data1"
    result+="$input"
    echo "$result"  
    if [ -d $result ]; 
        then 
            echo "Directory exists"
            newname="$input"
            newname+="ls -la"
            mv "$input" "$newname"
            echo "Folder $input renamed to $newname."
        else
            echo "Directory does not exist"
            exit 1
    fi
fi

# data1="ls -la"
    # result=$input
    # result+=$data1
    # echo "Folder name is $result"