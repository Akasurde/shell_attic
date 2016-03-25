#!/bin/bash

array=(1 2 3 4 5)

for i in ${array[@]}
do
    v=$(printf "str%s" $i)
    echo $v
done
