#grep -Hnr $1 . *.c
#grep -n -r --include="*.jsx" "carlos" . 
#grep --color -n -r --include="*.h" $1 . 
#find . -name "*.h" | xargs grep -Hn $1 
#find . -name "*.c" | xargs grep -Hn $1 
#find . -name "*.cpp" | xargs grep -Hn $1 
#find . -name "*.s" | xargs grep -Hn $1 
#printf "\E[0;34;40m"
printf "\E[0;34;40m"
echo "----.md-----------------------------------------------------------"
printf "\E[0m"
grep --color -n -r --include="*.md" $1 . 

printf "\E[0;34;40m"
echo "----.s ----------------------------------------------------------"
printf "\E[0m"
grep --color -n -r --include="*.s" $1 . 

printf "\E[0;34;40m"
echo "----.S --------------------------------------------------------"
grep --color -n -r --include="*.S" $1 . 
printf "\E[0m"

printf "\E[0;34;40m"
echo "----.hpp --------------------------------------------------------"
printf "\E[0m"
grep --color -n -r --include="*.hpp" $1 . 

printf "\E[0;34;40m"
echo "----.cxx --------------------------------------------------------"
grep --color -n -r --include="*.cxx" $1 . 
printf "\E[0m"

printf "\E[0;34;40m"
echo "----.cpp ----------------------------------------------------------"
printf "\E[0m"
grep --color -n -r --include="*.cpp" $1 . 

printf "\E[0;34;40m"
echo "----.h ----------------------------------------------------------"
printf "\E[0m"
grep --color -n -r --include="*.h" $1 . 

printf "\E[0;34;40m"
echo "----.c ----------------------------------------------------------"
printf "\E[0m"
grep --color -n -r --include="*.c" $1 . 

printf "\E[0;34;40m"
echo "----.qml ----------------------------------------------------------"
printf "\E[0m"
grep --color -n -r --include="*.qml" $1 . 





