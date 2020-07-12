
#!/bin/bash -x

echo "Welcome to usecase 2"
ishead=0
headcount=0
tailcount=0
counter=1
while [ $counter -lt 5 ]
do
        roll=$(( RANDOM%2 ))


        if [ $roll -eq $ishead ]
        then
                (( headcount++ ))
                coin="Heads"
        else
                (( tailcount++ ))
                coin="Tails"
        fi

        echo "The coin is flipped and it is "$coin

        (( counter++ ))

done

echo "The head is $headcount times"
echo "The tail is $tailcount times"


