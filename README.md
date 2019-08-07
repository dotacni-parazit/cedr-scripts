# CEDR-III download, parse and import scripts

Usage in order:

  - ./download.sh
  - ./extract.sh
  - ./fix_csv_mysql.sh
  - ./load_csv_into_mysql.sh

Then use following SQL files to create schema, fill it with data and fixup the data for relations

  - schema.sql
  - sql
  - post_processing.sql
