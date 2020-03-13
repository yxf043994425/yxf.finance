#!/bin/bash

dir="./schema.mysql/*"
# i=1001; for f in *.txt; do mv "$f" ${i#1}.png; ((i++)); done

for path in $dir; do
  file=${path##*/}
  prefix=${file:0-0:3}

  file_prefix=`expr $prefix + 1001`
  file_suffix=${file:3}
  file_dir=${path%/*}

  mv "$path" "$file_dir/${file_prefix#1}$file_suffix"
done