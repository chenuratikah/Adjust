#! /bin/sh
rm -r results
echo "results/ deleted"
mkdir results
mkdir results/219
mkdir results/361
mkdir results/398
mkdir results/261
mkdir results/308
echo "directories created"

echo "executing queries..."

db="usm"
pswd="cnat2203"
path="D:\Adjust\results"
path219="D:\Adjust\results\219"
path361="D:\Adjust\results\361"
path398="D:\Adjust\results\398"
path261="D:\Adjust\results\261"
path308="D:\Adjust\results\308"

#219

echo "Start with 219"

for min in {1..50000..1000}
do

max=$(($min+999))

#echo $min
#echo $max

PGPASSWORD=$pswd psql -h localhost -U postgres -d $db -c "\copy (SELECT * FROM usm00070219_header h JOIN usm00070219_body b ON h."\"IDX"\" = b."\"IDX"\" 
WHERE b."\"GPH"\" BETWEEN $min AND $max) to '$path219\usm00070219-$min-$max.csv' with csv HEADER;"

done

PGPASSWORD=$pswd psql -h localhost -U postgres -d $db -c "\copy (SELECT * FROM usm00070219_header h JOIN usm00070219_body b ON h."\"IDX"\" = b."\"IDX"\" 
WHERE b."\"GPH"\" =0) to '$path\usm00070219-0.csv' with csv HEADER;"

cat $path\\usm00070219-0.csv >> $path219\\usm00070219-1-1000.csv

mv $path219\\usm00070219-1-1000.csv  $path219\\usm00070219-0-1000.csv

rm $path\\usm00070219-0.csv

echo "Finish with 219"


#361

echo "Start with 361"

for min in {1..50000..1000}
do

max=$(($min+999))

#echo $min
#echo $max

PGPASSWORD=$pswd psql -h localhost -U postgres -d $db -c "\copy (SELECT * FROM usm00070361_header h JOIN usm00070361_body b ON h."\"IDX"\" = b."\"IDX"\" 
WHERE b."\"GPH"\" BETWEEN $min AND $max) to '$path361\usm00070361-$min-$max.csv' with csv HEADER;"

done


PGPASSWORD=$pswd psql -h localhost -U postgres -d $db -c "\copy (SELECT * FROM usm00070361_header h JOIN usm00070361_body b ON h."\"IDX"\" = b."\"IDX"\" 
WHERE b."\"GPH"\" =0) to '$path\usm00070361-0.csv' with csv HEADER;"

cat $path\\usm00070361-0.csv >> $path361\\usm00070361-1-1000.csv

mv $path361\\usm00070361-1-1000.csv  $path361\\usm00070361-0-1000.csv

rm $path\\usm00070361-0.csv


echo "Finish with 361"



#398

echo "Start with 398"

for min in {1..55000..1000}
do

max=$(($min+999))

#echo $min
#echo $max

PGPASSWORD=$pswd psql -h localhost -U postgres -d $db -c "\copy (SELECT * FROM usm00070398_header h JOIN usm00070398_body b ON h."\"IDX"\" = b."\"IDX"\" 
WHERE b."\"GPH"\" BETWEEN $min AND $max) to '$path398\usm00070398-$min-$max.csv' with csv HEADER;"

done

PGPASSWORD=$pswd psql -h localhost -U postgres -d $db -c "\copy (SELECT * FROM usm00070398_header h JOIN usm00070398_body b ON h."\"IDX"\" = b."\"IDX"\" 
WHERE b."\"GPH"\" =0) to '$path\usm00070398-0.csv' with csv HEADER;"

cat $path\\usm00070398-0.csv >> $path398\\usm00070398-1-1000.csv

mv $path398\\usm00070398-1-1000.csv  $path398\\usm00070398-0-1000.csv

rm $path\\usm00070398-0.csv


echo "Finish with 398"


#261

echo "Start with 261"

for min in {1..55000..1000}
do

max=$(($min+999))

#echo $min
#echo $max

PGPASSWORD=$pswd psql -h localhost -U postgres -d $db -c "\copy (SELECT * FROM usm00070261_header h JOIN usm00070261_body b ON h."\"IDX"\" = b."\"IDX"\" 
WHERE b."\"GPH"\" BETWEEN $min AND $max) to '$path261\usm00070261-$min-$max.csv' with csv HEADER;"

done


PGPASSWORD=$pswd psql -h localhost -U postgres -d $db -c "\copy (SELECT * FROM usm00070261_header h JOIN usm00070261_body b ON h."\"IDX"\" = b."\"IDX"\" 
WHERE b."\"GPH"\" =0) to '$path\usm00070261-0.csv' with csv HEADER;"

cat $path\\usm00070261-0.csv >> $path261\\usm00070261-1-1000.csv

mv $path261\\usm00070261-1-1000.csv  $path261\\usm00070261-0-1000.csv

rm $path\\usm00070261-0.csv


echo "Finish 261"


#308

echo "Start with 308"

for min in {1..50000..1000}
do

max=$(($min+999))

#echo $min
#echo $max

PGPASSWORD=$pswd psql -h localhost -U postgres -d $db -c "\copy (SELECT * FROM usm00070308_header h JOIN usm00070308_body b ON h."\"IDX"\" = b."\"IDX"\" 
WHERE b."\"GPH"\" BETWEEN $min AND $max) to '$path\308\usm00070308-$min-$max.csv' with csv HEADER;"

done


PGPASSWORD=$pswd psql -h localhost -U postgres -d $db -c "\copy (SELECT * FROM usm00070308_header h JOIN usm00070308_body b ON h."\"IDX"\" = b."\"IDX"\" 
WHERE b."\"GPH"\" =0) to '$path\usm00070308-0.csv' with csv HEADER;"

cat $path\\usm00070308-0.csv >> $path308\\usm00070308-1-1000.csv

mv $path308\\usm00070308-1-1000.csv  $path308\\usm00070308-0-1000.csv

rm $path\\usm00070308-0.csv


echo "Finish with 308"


echo "Success!"
	
	