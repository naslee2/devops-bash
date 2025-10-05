echo "Enter Folder Name:"
read input

if [ -z "$input" ]
    then
        echo "Nothing was entered"
else
    data1="ls -la"
    result=$input
    result+=$data1
    echo "Folder name is $result"
fi