COUNT=30
FILE_NAME="testfile.txt"

while [ 1 ];
do 
    for i in `seq 1 $COUNT`
    do
     DATA[i]=$((1 + $RANDOM % 100000))
    done

    echo ${DATA[1]} > $FILE_NAME
    for i in `seq 2 $COUNT`
    do
        echo ${DATA[i]} >> $FILE_NAME
    done


    for i in `seq 1 $COUNT`
    do
        RD=$(cat $FILE_NAME | tail -n +$i | head -1)
        if [ "$RD" != "${DATA[i]}" ] ; then
            echo "OOPPSSS" 
        fi
    done
done

