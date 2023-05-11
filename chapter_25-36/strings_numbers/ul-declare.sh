#!/usr/bin/env bash

declare -u upper
declare -l lower

for i; do
    upper="$i"
    lower="$i"
    echo "${upper}"
    echo "${lower}"
done
