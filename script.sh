#!/bin/bash
grep -i "#USM00070261" USM00070261-data.txt > USM00070261-header.txt
grep -i -v "#USM00070261" USM00070261-data.txt > USM00070261-body.txt

grep -i "#USM00070219" USM00070219-data.txt > USM00070219-header.txt
grep -i -v "#USM00070219" USM00070219-data.txt > USM00070219-body.txt

grep -i "#USM00070308" USM00070308-data.txt > USM00070308-header.txt
grep -i -v "#USM00070308" USM00070308-data.txt > USM00070308-body.txt

grep -i "#USM00070361" USM00070361-data.txt > USM00070361-header.txt
grep -i -v "#USM00070361" USM00070361-data.txt > USM00070361-body.txt

grep -i "#USM00070398" USM00070398-data.txt > USM00070398-header.txt
grep -i -v "#USM00070398" USM00070398-data.txt > USM00070398-body.txt


