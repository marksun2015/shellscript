COUNT=30

while [ 1 ];
do
    DATA=$((1 + $RANDOM % 100000))
    DATA1=$((1 + $RANDOM % 10000000))
    DATA2=$((1 + $RANDOM % 1000))

    for i in `seq 1 $COUNT`
    do                     
        echo $DATA > testfile$i
        echo $DATA1 >> testfile$i
        echo $DATA2 >> testfile$i
    done                  

    for i in `seq 1 $COUNT`
    do                     
        RD=$(cat testfile$i | tail +1 |head -1)
        if [ "$RD" != "${DATA}" ] ; then
                echo "OOPPSSS D"              
        fi                 
        RD=$(cat testfile$i | tail +2 |head -1)
        if [ "$RD" != "${DATA1}" ] ; then
                echo "OOPPSSS D1"              
        fi                 
        RD=$(cat testfile$i | tail +3 |head -1)
        if [ "$RD" != "${DATA2}" ] ; then
                echo "OOPPSSS D2"              
        fi                 
    done
done
