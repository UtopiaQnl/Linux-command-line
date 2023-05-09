#!/usr/bin/env bash

MIN_VAL=1
MAX_VAL=100

INT=534

if [[ "$INT" =~ ^(\+|-)?([1-9][0-9]*|0)$ ]]; then
    if [[ ! ("$INT" -ge "$MIN_VAL" && "$INT" -le "$MAX_VAL") ]]; then # if (( ! ("$INT" >= "$MIN_VAL" && "$INT" <= "$MAX_VAL") )); then
        echo "$INT is outside $MIN_VAL to $MAX_VAL."
    else
        echo "$INT is in range."
    fi
else
    echo "$INT is not an integer." >&2
    exit 1
fi
