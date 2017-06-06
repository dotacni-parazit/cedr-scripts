#!/bin/bash

mkdir -p CSV

ls 7Z/*.7z | parallel -j+0 --eta '7z x -o./CSV/ {} > /dev/null'
