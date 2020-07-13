
#!/bin/bash -x
``````
echo "Welcome to usecase 3"
ishead=0
headcount=0
tailcount=0
counter=1
while [ $headcount -lt 21 ] && [ $tailcount -lt 21 ]
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

if [ $headcount -gt $tailcount ]
then
        echo "The head has falled $headcount times and it has won by "$(( $headcount-$tailcount )) "" difference

elif [ $headcount -eq $tailcount ]
then
	echo "There is tie between head and tail and both falled "$headcount" times"
else
        echo "The tail has falled $tailcount times and it has won by "$(( $tailcount-$headcount )) "" difference

fi


