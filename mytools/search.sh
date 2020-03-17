find . -name "*.o" >> buildfile.txt
sed 's/\.o/\.c/g' < buildfile.txt > replacefile.txt
rm buildfile.txt

exec < replacefile.txt

while read line
do
	#echo $line # 一行一行印出內容
	grep -Hsnr "$1" $line
done

rm replacefile.txt
