#!/bin/bash

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

myArray=(0 0 0 0 0 0)
count=1
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
        echo -n $count ""; 
        for j in {1..6}; 
        do
            printf " %02d " ${myArray[$j]};
        done
        echo ""
        count=$((count+1))
    fi
done

echo ""
echo "==============================="
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
        for j in {1..6}; 
        do
            printf " %02d " ${myArray[$j]} ;
        done
        echo ""
        count=$((count+1))
    fi
done

