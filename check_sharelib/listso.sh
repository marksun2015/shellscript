#!/bin/bash
if [ $# -eq 0 ]
then
	echo " please input sharelib name:"
	echo " ex:listso.sh libcrypto.so"
	exit
fi

filename='list1.txt'
rm $filename

find /sbin -type f -perm -a+x >> $filename
find /bin -type f -perm -a+x >> $filename
find /usr/sbin -type f -perm -a+x >> $filename
find /usr/bin -type f -perm -a+x >> $filename
find /root -type f -perm -a+x >> $filename

exec < $filename
while read line
do
	    echo $line
		ldd $line | grep $1
done
rm $filename

