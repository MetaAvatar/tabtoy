#!/bin/bash

INPUT=./Excel
OUTPUT_S=./Server
OUTPUT_C=./Client

for file in `ls $INPUT`; do
    name=${file%.*}
    ./tabtoy_mac -mode=v2 -input_dir=$INPUT -output_dir=$OUTPUT_S -json_out=$name.json $file
    ./tabtoy_mac -mode=v2 -input_dir=$INPUT -output_dir=$OUTPUT_C -lua_out=$name.lua $file
done

echo "done."
