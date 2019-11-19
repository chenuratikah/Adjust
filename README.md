# Adjust
Take Home Tasks from Adjust


Software requirements 
1. Python 3.7++ ( I included py36.yml which consists of libraries I used)
2. PostgreSQL 12
3. Jupyter Notebook
4. cygwin (optional, use your choice of terminal)

To run bash scripts, make sure the directories and PostgreSQL details are updated accordingly. Database "usm" is created individually before loading process occur.

Following are the instructions to run the codes:

======= TASK 1 =========

1. Run script.sh . This script is to separate between header and body of the content into two different files. eg: USM0007219-header.txt and USM0007219-body.txt

   The data are separated for normalization and maintaing the intergrity of the table.

2. I created separated python files to load every files on Jupyter Notebook. On average, it takes 40-60 minutes to finish loading each file.

3. After the load completed for each files. I did some analysis on the data by checking the MINIMUM and MAXIMUM number of GPH, also ignoring values of -9999 and -8888.

Results of analysis:

USM00070219 ==> Min : 0 , Max : 49,534
USM00070261 ==> Min : 132 , Max : 54,654
USM00070308 ==> Min : 0 , Max : 48,972
USM00070361 ==> Min : 0 , Max : 47,838
USM00070398 ==> Min : 0 , Max : 51,319 rows

Therefore I can proceed to Task 2.


======== TASK 2 =========

1. Run psql_script.sh to run the partitioning tables. The tables are automatically generated.

   I used the above analysis to get ranges of GPH for every file and partition for every thousands.
   
   Example of query :
   
   \copy (SELECT * FROM usm00070361_header h JOIN usm00070361_body b ON h."IDX" = b."IDX" 
	WHERE b."GPH" BETWEEN $min AND $max) to 'usm00070361-$min-$max.csv' with csv HEADER;

	The query is joining based on index number created during data loading in task 1. Hence, intergrity is maintained.
	
	Overall, the script takes 15-20 minutes to finish running.
	
2. The data are partitioned accordingly based on the file name. I did not mix them up in one file even though the range is same.

