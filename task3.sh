if [ $# -eq 0 ]
then
	firstName="Abdallah"
	lastName="Abdalrhman"
elif [ $# -eq 1 ]
then
	case "$1" in
	   -h) echo -e "[\n\t-h[elp]:get help massage\n\t-env:will use the two environment variables FIRST_NAME and LAST_NAME as first name and last name\n\t{firstName} {LastName}:will use the two arguments as first name and last name\n]\ndefault: will use the hardcoded values as first and last names " 
	   ;;
	   -help) echo -e "[\n\t-h[elp]:get help massage\n\t-env:will use the two environment variables FIRST_NAME and LAST_NAME as first name and last name\n\t{firstName} {LastName}:will use the two arguments as first name and last name\n]\ndefault: will use the hardcoded values as first and last names " 
	   ;;
	   -env)
	   firstName="$FIRST_NAME"
	   lastName="$LAST_NAME"
	   ;;
	   *)echo -e "wrong args input \ntry use -h or -help"
	   exit 0
	   ;;
esac
elif [ $# -eq 2 ]
then

	firstName="$1"
	lastName="$2"
else 
	echo -e "wrong args input \ntry use -h or -help"
	exit 1
fi
cd ~
rm -rf tmp
mkdir tmp
cd tmp
for i in 1 2 3 4 5
do
	mkdir training_project_"$i"
	cd training_project_"$i"
	
	touch module_"$i"_a.txt
	chmod 0777 module_"$i"_a.txt
	echo "Hello "$firstName" welcome to file "$i".A" > module_"$i"_a.txt
	
	touch module_"$i"_b.txt
	chmod 0777 module_"$i"_b.txt
	echo "Hello "$lastName" welcome to file "$i".B" > module_"$i"_b.txt
	
	cd ..
done
exit 0
