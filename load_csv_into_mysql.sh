#!/bin/bash

CURPWD=$(pwd)
MYSQLPRECMD="TRUNCATE $DBNAME.TABLENAME;"
MYSQLCMD="LOAD DATA LOCAL INFILE 'FPATH' INTO TABLE $DBNAME.TABLENAME CHARACTER SET UTF8 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' IGNORE 1 ROWS;"

cd CSV
PROTOTYPES=$(ls -1 *.csv | sed 's/\.csv//gi')
cd ..

shopt -s extglob

echo "\W" > sql

# Truncating full DB
echo "SET FOREIGN_KEY_CHECKS=0;" >> sql
for prot in ${PROTOTYPES[@]}; do
  echo $(echo $MYSQLPRECMD | sed "s/TABLENAME/${prot}/gi") >> sql
done
echo "SET FOREIGN_KEY_CHECKS=1;" >> sql

# Importing CSVs
for prot in ${PROTOTYPES[@]}; do
  MCMD=$(echo $MYSQLCMD | sed "s/FPATH/CSV\/${prot}\.csv/gi" | sed "s/TABLENAME/${prot}/gi")
  echo $MCMD >> sql
done

exit 0
