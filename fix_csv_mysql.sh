#!/bin/bash

find CSV -type f -iname '*.csv' -exec sed -i 's/,false,/,0,/g' \{\} \;
find CSV -type f -iname '*.csv' -exec sed -i 's/,true,/,1,/g' \{\} \;

# does not get rid of warnings
#find CSV -type f -iname '*.csv' -exec sed -i 's/000Z.$/000/g' \{\} \;
#find CSV -type f -iname '*.csv' -exec sed -i 's/000Z,/000,/g' \{\} \;
