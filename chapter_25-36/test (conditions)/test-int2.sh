#!/usr/bin/env bash

INT=21438

if [[ "$INT" =~ ^(\+|-)?([1-9][0-9]*|0)$ ]]; then
    if [ $INT -eq 0 ]; then
        echo "INT is zero."
    else
        if [ $INT -lt 0 ]; then
            echo "INT is negative."
        else
            echo "INT is positive."
        fi
        if [ $((INT % 2)) -eq 0 ]; then
            echo "INT is even."
        else
            echo "INT is odd."
        fi
    fi
else
    echo "INT is not a integer." >&2
    exit 1
fi
