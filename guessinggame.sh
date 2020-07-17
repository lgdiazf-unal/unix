 #function
function getNumber {
    number=$(ls | wc -l)
}
getNumber
echo "guess the number of files in the current directory:"
read response
echo $number 
#loop
while [[ $response -ne $number ]]
do
    #if statement
    if [[ $response -gt $number ]]
    then
        echo "$response is too high"
        echo "guess the number of files in the current directory:"
    else
        echo "$response is too low"
        echo "guess the number of files in the current directory:"
    fi
    read response
done
echo "----- good work!!!! ------"