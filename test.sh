#! /bin/sh

db="usm"
pswd="cnat2203"
path="D:\Adjust\results"
path219="D:\Adjust\results\219"
path361="D:\Adjust\results\361"
path398="D:\Adjust\results\398"
path261="D:\Adjust\results\261"
path308="D:\Adjust\results\308"

PGPASSWORD=$pswd psql -h localhost -U postgres -d $db -c "\copy (SELECT * FROM usm00070219_header h JOIN usm00070219_body b ON h."\"IDX"\" = b."\"IDX"\" 
WHERE b."\"GPH"\" =0) to '$path\usm00070219-0.csv' with csv HEADER;"

cat $path\\usm00070219-0.csv >> $path219\\usm00070219-1-1000.csv

mv $path219\\usm00070219-1-1000.csv  $path219\\usm00070219-0-1000.csv


rm $path\\usm00070219-0.csv