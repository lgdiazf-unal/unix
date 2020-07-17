# guessing game

## information

>**The date and time at which make was run :** 16/07/20  - 22:22

>**The number of lines of code contained in guessinggame file :** 20

## the code
```bash
function getNumber {
    number=$(ls | wc -l)
}
getNumber
echo "guess the number of files in the current directory:"
read response
echo $number 
while [[ $response -ne $number ]]
do
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
```
