#!/bin/bash

DBUSER="root"
DBPASS="71eb647e30e1e93886d63ceb8a172814065be75b"
DBNAME="cedr"
DBHOST="localhost"
CURPWD=$(pwd)
SHELLCMD="mysql -u$DBUSER -p$DBPASS -h$DBHOST $DBNAME -Be"
MYSQLCMD="\"LOAD DATA LOCAL INFILE 'FPATH' INTO TABLE $DBNAME.TABLENAME FIELDS TERMINATED BY ',' IGNORE 1 ROWS;\""

PROTOTYPES=$(cat download.sh | awk '{print $3}' | grep "csv.7z" | awk -F '/' '{print $NF}' | sed 's/\.csv\.7z//gi' | tr -d '"')
PROTOTYPES+=( "ciselnikUcelZnak_DotacniTitulv01" "ciselnikDotaceTitul_StatniRozpocetUkazatelv01" "ciselnikDotaceTitul_RozpoctovaSkladbaParagrafv01" )

#for prot in ${PROTOTYPES[@]}; do
#  echo $prot
#done
#exit 0

for prot in ${PROTOTYPES[@]}; do
  TOMERGE="$(ls -1 ./CSV/${prot}*)"
  for file in ${TOMERGE}; do
    MCMD=$(echo $MYSQLCMD | sed "s|FPATH|$file|gi" | sed "s/TABLENAME/$prot/gi")
    echo "$(eval ${SHELLCMD} ${MCMD})"
    #exit 0
  done
done

exit 0