#!/usr/bin/env bash

echo -n "Please enter an integer -> "
read -r int

if [[ "$int" =~ ^(\+|-)?([1-9][0-9]*|0)$ ]]; then
    if [ "$int" -eq 0 ]; then
        echo "int is zero."
    else
        if [ "$int" -lt 0 ]; then
            echo "int is negative."
        else
            echo "int is positive."
        fi
        if [ $((int % 2)) -eq 0 ]; then
            echo "int is even."
        else
            echo "int is odd."
        fi
    fi
else
    echo "int is not a integer." >&2
    exit 1
fi
