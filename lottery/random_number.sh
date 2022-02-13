#!/bin/bash

myArray=(0 0 0 0 0 0)
count=1

function checkrepeat() {
   seen=()
   arr=("$@")
   retval=""
    for i in "${arr[@]}"; do
        # Remove padding zeroes, if any
        i=$((10#$i))
        # If element of arr is not in seen, add it as a key to seen
        if [ -z "${seen[i]}" ]; then
            seen[i]=1
        else
            # "Array contains a duplicate."
            return 1
        fi
    done
    return 0
}

function bubble_sort() {
    #nos=(5 74 8 9)
    nos=("$@")
    n=${#nos[@]}

    # Now do the Sorting of numbers
    for (( i = 0; i < $n ; i++ ))
    do
        for (( j = $i; j < $n; j++ ))
        do
            if [ ${nos[$i]} -gt ${nos[$j]}  ]; then
            t=${nos[$i]}
            nos[$i]=${nos[$j]}
            nos[$j]=$t
            fi
        done
    done
    for j in {1..6};
    do
        printf " %02d " ${nos[$j]};
    done
}

echo "==============================="
echo "lottery 1~49:"
while [ $count -lt 9 ];
do 
    number=0;
    for j in {1..6};
    do 
        while [ $number -eq 0 ];
        do
            number=$[ $RANDOM % 50 ]  
        done
        myArray[$j]=$number;  
        number=0;
    done
    checkrepeat "${myArray[@]}"
    if [ $? -eq 0 ];then
        bubble_sort "${myArray[@]}"
        #for j in {1..6};
        #do
        #    printf " %02d " ${myArray[$j]};
        #done
        echo ""
        count=$((count+1))
    fi
done

echo ""
echo "==============================="
echo "super lotto lotto 1~38:"
myArray=(0 0 0 0 0 0)
count=1
while [ $count -lt 9 ];
do 
    number=0;
    for j in {1..6};
    do 
        while [ $number -eq 0 ];
        do
            number=$[ $RANDOM % 39 ]  
        done
        myArray[$j]=$number;  
        number=0;
    done
    checkrepeat "${myArray[@]}"
    if [ $? -eq 0 ];then
        echo -n $count ""; 
        bubble_sort "${myArray[@]}"
        #for j in {1..6};
        #do
        #    printf " %02d " ${myArray[$j]} ;
        #done
        echo ""
        count=$((count+1))
    fi
done

