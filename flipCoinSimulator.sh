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

