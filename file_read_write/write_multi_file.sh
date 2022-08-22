FILE_COUNT=6
DATA_COUNT=5
FILE_NAME="testfile"

while [ 1 ];
do
    # random data #
    for i in `seq 1 $DATA_COUNT`
    do
      DATA[i]=$((1 + $RANDOM % 100000))
    done

    # write files #
    for i in `seq 1 $FILE_COUNT`
    do                     
      echo ${DATA[1]} > $FILE_NAME$i    # clear previous data
      for j in `seq 2 $DATA_COUNT`
      do
        echo ${DATA[j]} >> $FILE_NAME$i
      done
    done                  

    # check data #
    for i in `seq 1 $FILE_COUNT`
    do                     
      for j in `seq 1 $DATA_COUNT`
      do
        RD=$(cat $FILE_NAME$i | tail -n +$j | head -1)
        if [ "$RD" != "${DATA[j]}" ] ; then
            echo "OOPS!!! Read Data Error!!!"
        #else
        #    echo "$RD"
        fi
      done
    done
done
