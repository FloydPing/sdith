#!/usr/bin/env bash

directories=(
  "sdith_cat1_fast/"
  "sdith_cat1_short/"
  "sdith_cat3_fast/"
  "sdith_cat3_short/"
  "sdith_cat5_fast/"
  "sdith_cat5_short/"
)

# Iterate through the list
for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then
        cd ${dir}
        mkdir -p build
        cd build 
        cmake ..
        make -j8
        ./bench_sdith >> ../../data.txt 
        cd ../..
    else
        echo "Warning: $dir is not a directory"
    fi
done
