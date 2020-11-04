#! /bin/bash

#Implementation of flipCoin function
H=0
T=0
flipCoin()
{
        value=$((RANDOM % 2))

        if [ $value -eq 0 ]
        then
                H=`expr $H + 1`
        else
                T=`expr $T + 1`
        fi
}

for (( i=0; i<70; i++ ))
do
	flipCoin

	if (( $H==21 ))
	then
		d=`expr $H - $T`
		if (( $d<0 ))
		then
			d=`expr $d \* -1`
		fi

		echo "Head Win! By $d"
		break

	elif (( $T==21 ))
	then
		d=`expr $T - $H`
                if (( $d<0 ))
                then
                        d=`expr $d \* -1`
                fi

		echo "Tail Win! By $d"
		break

	elif (( $H==21 && $T==21 ))
	then
		echo "It's a Tie!"
		break
	fi
done
