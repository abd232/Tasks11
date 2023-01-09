firstName="Abdallah"
lastName="Abdalrhman"
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
